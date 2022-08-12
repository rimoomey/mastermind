# frozen_string_literal: true

# Human code breaker class
class CodeBreaker
  attr_accessor :secret_code

  def initialize
    @secret_code = [1, 2, 3, 4] # [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
  end

  def correct_guess?(guess)
    (0..3).each do |index|
      return false if guess[index] != @secret_code[index]
    end
    true
  end
end
