# frozen_string_literal: false

require_relative './game'
require_relative './code_breaker'
require_relative './text_display'
require_relative './logic_manager'

mindmaster = Game.new
mindmaster.select_game_type
