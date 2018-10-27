# frozen_string_literal: true

class ReportCreater
  def create_web_test_report(export_file_path)
    `rspec spec/web --out "#{export_file_path}"`
  end

  def create_soap_test_report(export_file_path)
    `rspec spec/soap --out "#{export_file_path}"`
  end
end
