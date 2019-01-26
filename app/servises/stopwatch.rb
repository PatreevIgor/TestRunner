# frozen_string_literal: true

class Stopwatch
  def initialize
    @start = Time.now
  end

  def elapsed_time
    now = Time.now
    elapsed = now - @start

    elapsed.to_s
  end
end
