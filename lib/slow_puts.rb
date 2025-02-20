# frozen_string_literal: true

require_relative "slow_puts/version"

module SlowPuts
  # SlowPuts: A simple Ruby gem that prints text slowly, character by character.
  #
  # Example usage:
  #   require 'slow_puts'
  #   slow_puts "Hello, world!"
  #
  # This will print each character with a delay, creating a dramatic effect.
  #
  # Author: rira100000000
  # License: MIT
  module ::Kernel
    def slow_puts(obj)
      obj.to_s.chars.each do |c|
        print c
        sleep 0.5
      end
      puts
    end
  end

  class Error < StandardError; end
end
