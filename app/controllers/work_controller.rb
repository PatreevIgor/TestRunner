# frozen_string_literal: true

class WorkController < ApplicationController
  skip_before_action :verify_authenticity_token

  def some_action
    Indicator.status = params['indicator_working']
    send_indicator_status_to_js

    ProcessExecuter.execute_process
  end

  def button_run_web_autotests
    report_creater.create_web_test_report(Constant::WEB_TEST_REPORT_FILE_PATH)

    redirect_to root_path
  end

  def button_run_soap_autotests
    report_creater.create_soap_test_report(Constant::SOAP_TEST_REPORT_FILE_PATH)

    redirect_to root_path
  end

  private

  def send_indicator_status_to_js
    gon.indicator_status = Indicator.status
  end

  def report_creater
    @report_creater ||= ReportCreater.new
  end
end
