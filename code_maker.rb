# frozen_string_literal: true

require_relative './text_display'
require_relative './logic_manager'

# Class for player code maker version of the game
class CodeMaker
  include LogicManager
  include TextDisplay
  attr_reader :secret_code, :matches, :curr_guess

  def initialize
    @secret_code = set_user_code
    p @secret_code
  end

  def make_guess(correct_guesses); end

  def start_guessing; end

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
  end
end
