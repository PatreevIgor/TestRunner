# frozen_string_literal: true

class ResultPresenter
  def web_rspec_result
    result = ''
    File.open('rspec_web_results.html').each do |line|
      result += line
    end

    result
  end

  def soap_rspec_result
    result = ''
    File.open('rspec_web_results.html').each do |line|
      result += line
    end

    result
  end
end
