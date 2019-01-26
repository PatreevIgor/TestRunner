# frozen_string_literal: true

class TestRunner
  def run_web_test_and_create_report(export_file_path)
    `rspec spec/web --out "#{export_file_path}"`
  end

  def run_soap_test_and_create_report(export_file_path)
    `rspec spec/soap --out "#{export_file_path}"`
  end
end
