# frozen_string_literal: false

require_relative './string'

# Manages text display and gets user input
module TextDisplay
  def colored_number(number)
    case number
    when 1 then "\e[41m 1 \e[0m"
    when 2 then "\e[42m 2 \e[0m"
    when 3 then "\e[44m 3 \e[0m"
    when 4 then "\e[45m 4 \e[0m"
    when 5 then "\e[46m 5 \e[0m"
    when 6 then "\e[47m 6 \e[0m"
    else
      " #{number} "
    end
  end

  def colored_list(arr)
    arr.reduce('') do |previous, current|
      previous + " #{colored_number(current)} "
    end
  end

  def game_type_prompt
    puts 'Please select your game type: (B for BREAKER, M for MAKER)'
  end

  def guess_prompt(count)
    puts "Please enter guess ##{count} (1-4)"
  end

  def show_guess_result(exact_matches, all_matches)
    puts "Correct color & position: #{colored_list(exact_matches)}"
    puts "Correct color only: #{colored_list(all_matches)}"
  end

  def guesses_left(guesses)
    puts "You have #{12 - guesses} guesses left."
  end

  def outcome_text(correct)
    game_outcome = correct ? 'You win!' : 'You lose!'
    puts game_outcome
  end

  def prompt_user_maker(count)
    puts "Please enter ##{count} for secret code. (1-6)"
  end

  def invalid_input
    puts 'Invalid input received'
  end

  def computer_guessing(attempt_num)
    puts 'The computer is now guessing...'
    puts "Guess #{attempt_num}: "
    sleep(1)
  end

  def computer_guess_output(guess, matches)
    puts "Computer chooses: #{colored_list(guess)}"
    puts ''
    puts "Matches so far: #{colored_list(matches)}"
    puts ''
  end

  def print_instructions
    puts 'Mastermind is a guessing game that involves breaking a code.'
    puts 'The MAKER creates a 4 color code. Example: '
    puts colored_list([1, 2, 3, 4])
    puts ''
    puts 'The BREAKER gets 12 turns to guess the code.'
    puts 'If you are the BREAKER, the game will tell you how many you get' <<
         ' exactly right and how many colors you got that were in the wrong place.'
    puts 'If you are the MAKER, the computer will get to guess your code.'
    puts ''
    puts 'Now, do you want to be the MAKER (M) or the BREAKER (B)?'
  end
end
