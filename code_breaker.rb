# frozen_string_literal: true

require_relative './logic_manager'
require_relative './text_display'

# Human code breaker class
class CodeBreaker
  include LogicManager
  include TextDisplay
  attr_reader :secret_code, :guess

  def initialize
    @secret_code = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
    # @secret_code = [1, 1, 1, 2] test guess
  end

  def make_guess
    @guess = ask_for_guess # prompt for user input

    input_confirmation(@guess)

    show_guess_result(exact_matches(@secret_code, @guess),
                      all_guesses_matching(@secret_code, @guess))

    correct_guess?(@secret_code, @guess)
  end

  def start_guessing
    guesses = 0
    correct = false

    until guesses == 12 || correct
      correct = make_guess
      guesses += 1
      guesses_left(guesses) unless correct
    end

    outcome_text(correct)
  end

  def ask_for_guess
    new_guess = [0, 0, 0, 0]

    (1..4).each do |time|
      guess_prompt(time)
      new_guess[time - 1] = gets.chomp.to_i
    end
    new_guess
  end
end
