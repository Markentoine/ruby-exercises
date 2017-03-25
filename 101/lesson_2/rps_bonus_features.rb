VALID_INPUTS = %w(r p sc sp l)
VALID_MOVES = %w(rock paper scissors spock lizard)
WIN_CONDITIONS = [
  ['rock', 'scissors'], ['rock', 'lizard'], ['paper', 'rock'],
  ['paper', 'spock'], ['scissors', 'paper'], ['scissors', 'lizard'],
  ['spock', 'scissors'], ['spock', 'rock'], ['lizard', 'paper'],
  ['lizard', 'spock']
]

def win?(first, second)
  WIN_CONDITIONS.include?([first, second])
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won the current round.")
  elsif win?(computer, player)
    prompt("The computer won the current round.")
  else
    prompt("This round is a tie.")
  end
end

def keep_score(player, computer, score_hash)
  if win?(player, computer)
    score_hash['player'] += 1
  elsif win?(computer, player)
    score_hash['computer'] += 1
  end
end

def game_over?(score_hash, winner)
  if score_hash['player'] >= 5
    winner = "player"
    end_game(winner)
  elsif score_hash['computer'] >= 5
    winner = "computer"
    end_game(winner)
  end
end

def end_game(winner)
  prompt("The game is over, the winner is #{winner}")
  $quit[0] += 1
end

def print_score(score_hash)
  prompt("The score is:")
  prompt("Player : #{score_hash['player']}")
  prompt("Computer: #{score_hash['computer']}")
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

score = { "player" => 0, "computer" => 0 }
$quit = [0]
winner = ''

prompt("Welcome to play 'rock, paper, scissors, spock, lizard'")
loop do
  player = ''
  prompt("Minimum input length is one letter, two letters for spock and scissors")
  loop do
    prompt("Please choose what to play: #{VALID_MOVES.join(', ')}")
    player = Kernel.gets.chomp.downcase



    if VALID_INPUTS.include?(player)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer = VALID_INPUTS.sample

  Kernel.puts("You chose: #{player} Computer chose: #{computer}")

  display_result(player, computer)
  keep_score(player, computer, score)
  print_score(score)
  game_over?(score, winner)
  break unless $quit[0] == 0
  #prompt("Do you want to play again?")
  #answer = Kernel.gets().chomp()
  #break unless answer.downcase().start_with?('y')

end

prompt("Thank you for playing, soronoo!")
