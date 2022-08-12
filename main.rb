# frozen_string_literal: false

require './game'
require './code_breaker'
require './display'
require './logic_manager'

breaker = CodeBreaker.new

guess = [1,2,3,4]

puts breaker.correct_guess?(guess)