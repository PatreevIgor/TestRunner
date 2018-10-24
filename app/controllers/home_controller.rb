# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @rspec_result = ''
    File.open('rspec_results.html').each do |line|
      @rspec_result += line
    end
  end
end
