VALID_CHOICES = %w(rock paper scissors lizard spock)
WIN_CONDITIONS = {
  rock: {
    lizard: 'win',
    spock: 'lose',
    scissors: 'win',
    paper: 'lose',
    rock: 'tie'
  },
  lizard: {
    spock: 'win',
    scissors: 'lose',
    paper: 'win',
    rock: 'lose',
    lizard: 'tie'
  },
  spock: {
    scissors: 'win',
    paper: 'lose',
    rock: 'win',
    lizard: 'lose',
    spock: 'tie'
  },
  scissors: {
    paper: 'win',
    rock: 'lose',
    lizard: 'win',
    spock: 'lose',
    scissors: 'tie'
  },
  paper: {
    rock: 'win',
    lizard: 'lose',
    spock: 'win',
    scissors: 'lose',
    paper: 'tie'
  }
}
def prompt(message)
  Kernel.puts("=> #{message}")
end

def find_possible_choices(choice)
  possible_choices = []
  VALID_CHOICES.each do |obj|
    if obj.start_with?(choice)
      possible_choices << obj
    end
  end
  possible_choices
end

def win?(first, second)
  WIN_CONDITIONS[first.to_sym][second.to_sym]
end

def update_score(score, player_choice, computer_choice)
  case win?(player_choice, computer_choice)
  when 'win'
    score[:player] += 1
  when 'lose'
    score[:computer] += 1
  end
end

def display_results(player, computer)
  case  win?(player, computer)
  when 'win'
    prompt("You won!")
  when 'lose'
    prompt("Computer won!")
  when 'tie'
    prompt("It's a tie!")
  end
end

system("clear")

score = { player: 0, computer: 0 }
loop do
  player_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt('Partial words are acceptable.')
    player_choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(player_choice)
      break
    else
      possible_choices = find_possible_choices(player_choice)
      if possible_choices.size > 1
        prompt('Your input matches the following possible choices:')
        possible_choices.each { |possible_choice| prompt(possible_choice) }
        prompt('Please enter enough letters to differentiate.')
      elsif possible_choices.size == 1
        player_choice = possible_choices[0]
        break
      else # No matches
        prompt("That's not a valid choice.")
      end
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{player_choice}; Computer chose: #{computer_choice}")

  update_score(score, player_choice, computer_choice)

  display_results(player_choice, computer_choice)

  if score[:player] == 3
    prompt("You won three rounds - you're the grand winner!")
    break
  elsif score[:computer] == 3
    prompt('The computer won three rounds - GAME OVER.')
    break
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('Thank you for playing. Goodbye!')
