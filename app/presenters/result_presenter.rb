# frozen_string_literal: true

class ResultPresenter
  def web_rspec_result
    File.exist?(Constant::WEB_TEST_REPORT_FILE_PATH) ? File.open(Constant::WEB_TEST_REPORT_FILE_PATH).read : nil
  end

  def soap_rspec_result
    File.exist?(Constant::SOAP_TEST_REPORT_FILE_PATH) ? File.open(Constant::SOAP_TEST_REPORT_FILE_PATH).read : nil
  end
end
