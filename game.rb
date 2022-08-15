# frozen_string_literal: true

require_relative './code_breaker'
require_relative './code_maker'
require_relative './text_display'

# Game begins the game process
class Game
  include TextDisplay

  def initialize
    @breaker = select_game_type
    @breaker.start_guessing
  end

  def select_game_type
    game_type_prompt
    game_type = gets.chomp

    case game_type
    when 'B'
      CodeBreaker.new
    when 'M'
      CodeMaker.new
    else
      puts 'Invalid Choice'
      select_game_type
    end
  end
end
