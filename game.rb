# frozen_string_literal: true

require './code_breaker'

# Game begins the game process
class Game
  def initialize
    _breaker = CodeBreaker.new
  end
end
