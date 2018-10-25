# frozen_string_literal: true

class WorkController < ApplicationController
  def button_run_web_autotests
    `rspec spec/web --out rspec_web_results.html`

    redirect_to root_path
  end

  def button_run_soap_autotests
    `rspec spec/soap --out rspec_soap_results.html`

    redirect_to root_path
  end
end
