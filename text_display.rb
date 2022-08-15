# frozen_string_literal: false

# Manages text display and gets user input
module TextDisplay
  def game_type_prompt
    puts 'Please select your game type: (B for BREAKER, M for MAKER)'
  end

  def guess_prompt(count)
    puts "Please enter guess ##{count} (1-4)"
  end

  def show_guess_result(exact_matches, all_matches)
    puts "Correct color & position: #{exact_matches}"
    puts "Correct color only: #{all_matches}"
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
    puts "Computer chooses: #{guess}"
    puts "Matches so far: #{matches}"
    puts ''
  end
end
