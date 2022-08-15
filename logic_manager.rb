# frozen_string_literal: true

require_relative './game'
require_relative './code_breaker'

# To handle game logic
module LogicManager
  def exact_matches(master, guess)
    exact = 0
    master.each_with_index do |value, index|
      exact += 1 if value == guess[index]
    end
    exact
  end

  def all_guesses_matching(master, guess)
    matching_numbers = 0
    guess.each do |value|
      matching_numbers += 1 if master.include?(value)
    end
    matching_numbers
  end

  def check_against_code(master, guess)
    matches = [0, 0, 0, 0]
    guess.each_with_index do |value, index|
      matches[index] = value if master[index] == value
    end
    matches
  end

  def correct_guess?(master, guess)
    master == guess
  end

  def valid_code_input?(choice)
    choice.instance_of?(Integer) && choice <= 6 && choice >= 1
  end
end
