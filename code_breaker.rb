# frozen_string_literal: true

require_relative './logic_manager'
require_relative './display'

# Human code breaker class
class CodeBreaker
  include LogicManager
  include TextDisplay
  attr_accessor :secret_code, :guess

  def initialize
    @secret_code = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
    @secret_code = [1, 1, 1, 2] # test guess
  end

  def start_guessing
    guesses = 0

    until guesses.positive?
      @guess = collect_guess_code # prompt for user input

      p @guess
      guesses += 1
    end
  end

  def collect_guess_code
    new_guess = [0, 0, 0, 0]
    (1..4).each do |time|
      guess_prompt(time)
      new_guess[time - 1] = gets.chomp.to_i
    end
    new_guess
  end
end
