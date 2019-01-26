# frozen_string_literal: true

class WorkController < ApplicationController
  skip_before_action :verify_authenticity_token

  def some_action
    Indicator.status = params['indicator_working']
    send_indicator_status_to_js

    ProcessExecuter.execute_process
  end

  def web_autotest
    test_runner.run_web_test_and_create_report(Constant::WEB_TEST_REPORT_FILE_PATH)

    redirect_to root_path
  end

  def soap_autotest
    test_runner.run_soap_test_and_create_report(Constant::SOAP_TEST_REPORT_FILE_PATH)

    redirect_to root_path
  end

  def parallel_performance_autotest
    stopwatch_start
    executing_parallel_operations(params[:count].to_i)
    @time = stopwatch.elapsed_time

    redirect_to root_path(time: @time)
  end

  def sequential_performance_autotest
    stopwatch_start
    executing_sequential_operations(params[:count].to_i)
    @time = stopwatch.elapsed_time

    redirect_to root_path(time: @time)
  end

  private

  def executing_parallel_operations(count)
    threads = []
    threads << Thread.new { count.times { operation } }

    threads.each(&:join)
  end

  def executing_sequential_operations(count)
    count.times { operation }
  end

  def operation
    Savon.client(wsdl: 'http://www.thomas-bayer.com/axis2/services/BLZService?wsdl')
  end

  def send_indicator_status_to_js
    gon.indicator_status = Indicator.status
  end

  def test_runner
    @test_runner ||= TestRunner.new
  end

  def stopwatch_start
    stopwatch
  end

  def stopwatch
    @stopwatch ||= Stopwatch.new
  end
end
