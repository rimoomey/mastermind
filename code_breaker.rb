# frozen_string_literal: true

# Human code breaker class
class CodeBreaker
  attr_accessor :secret_code, :guess

  def initialize
    @secret_code = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
  end
end
