# frozen_string_literal: true

class Indicator
  class << self
    attr_accessor :status
  end

  @status = 'off'

  def self.status_on?
    true if @status == 'on'
  end

  def self.status_off?
    true if @status.zero?
  end
end
