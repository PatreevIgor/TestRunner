# frozen_string_literal: true

class ProcessExecuter
  def self.execute_process
    a = 0
    while Indicator.status_on?
      a += 1
      sleep 1
      puts a
      puts "Indicator = #{Indicator.status}"
    end
  end
end
