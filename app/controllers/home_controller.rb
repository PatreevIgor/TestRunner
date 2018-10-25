# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @rspec_web_result  = result_presenter.web_rspec_result
    @rspec_soap_result = result_presenter.soap_rspec_result
  end

  private

  def result_presenter
    @result_presenter ||= ResultPresenter.new
  end
end
