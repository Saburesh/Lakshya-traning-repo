# frozen_string_literal: true

require "thor"

module Dance
  # CLI class for the dance command
  class CLI < Thor
    def self.exit_on_failure?
      true
    end

    desc "nice", "Show dancing emoji figures"
    def nice
      dancers = ["💃", "🕺", "🪩", "🕴️"]
      frames = 30
      
      puts "Dance party started! Press Ctrl+C to stop"
      
      frames.times do |i|
        # Clear the line and create dance line with shifting positions
        print "\r" + (" " * 60) + "\r"
        dance_line = dancers.rotate(i % dancers.size).join("  ")
        print dance_line
        sleep 0.2
      end
      
      puts "\nDance party ended!"
    rescue Interrupt
      puts "\nDance party stopped!"
    end

    desc "bear", "Show bears (they don't dance well)"
    def bear
      # Check if the environment variable is set
      unless ENV["A_WONDER_THE_BEAR_DANCES_AT_ALL"]
        warn "WARN: the bear does not dance well"
      end
      
      bears = ["🐻", "🐻‍❄️", "🧸"]
      
      puts bears.join("  ")
      puts "Bears are here, but they're not great dancers."
    end
  end
end
