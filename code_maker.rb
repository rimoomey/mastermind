# frozen_string_literal: false

require_relative './text_display'
require_relative './logic_manager'

# Class for player code maker version of the game
class CodeMaker
  include LogicManager
  include TextDisplay
  attr_reader :secret_code, :matches, :curr_guess

  def initialize
    @secret_code = set_user_code
    @matches = [0, 0, 0, 0]
    p @secret_code
  end

  def make_guess(correct_guesses)
    correct_guesses.map do |element|
      if element != 0
        element
      else
        rand(1..6)
      end
    end
  end

  def start_guessing
    attempt_num = 1
    correct = false

    until attempt_num > 12 || correct
      computer_guessing(attempt_num)
      @curr_guess = make_guess(@matches)
      @matches = check_against_code(@secret_code, @curr_guess)
      computer_guess_output(curr_guess, matches)
      attempt_num += 1

      correct = @curr_guess == @secret_code
    end
    outcome_text(!correct)
  end

  def set_user_code
    user_code = []

    until user_code.length > 3
      prompt_user_maker(user_code.length + 1)
      choice = gets.chomp.to_i

      if valid_code_input?(choice)
        user_code.push(choice)
      else
        invalid_input
      end
    end
    user_code
  end
end
