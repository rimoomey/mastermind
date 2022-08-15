# frozen_string_literal: false

# Manages text display and gets user input
module TextDisplay
  def game_type_prompt
    puts 'Please select your game type: (B for BREAKER, M for MAKER)'
  end

  def guess_prompt(count)
    puts "Please enter guess ##{count}"
  end

  def show_guess_result(exact_matches, all_matches)
    puts "Correct color & position: #{exact_matches}"
    puts "Correct color only: #{all_matches}"
  end

  def outcome_text(correct)
    game_outcome = correct ? 'You win!' : 'You lose!'
    puts game_outcome
  end
end
