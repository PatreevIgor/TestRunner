# frozen_string_literal: true

class WorkController < ApplicationController
  def button_run_web_autotests
    `rspec spec/web --out rspec_results.html`

    redirect_to root_path
  end
end
