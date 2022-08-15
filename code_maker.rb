# frozen_string_literal: true

require_relative './text_display'
require_relative './logic_manager'

# Class for player code maker version of the game
class CodeMaker
  include LogicManager
  include TextDisplay

  def initialize; end

  def make_guess(correct_guesses); end

  def start_guessing; end
end
