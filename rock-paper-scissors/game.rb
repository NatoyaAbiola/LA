2.times do

player_score = 0
computer_score = 0

puts " Welcome to the Rock, Paper, Scissors game - let's play!"
puts "choose r for rock"
puts "choose p for paper"
puts "choose s for scissors"

player_input = gets.chomp.downcase
player = player_input

computer = rand(3)

if computer == 0
  computer_input = "r"
elsif computer == 1
  computer_input = "p"
else
  computer_input = "s"
end

if player_input == "r" && computer_input == "s"
  puts "Player chose rock."
  puts "Computer chose scissors."
  puts "Rock beats scissors, Player wins!"
  player_score += 1

elsif player_input == "s" && computer_input == "p"
  puts "Player chose scissors."
  puts "Computer chose paper."
  puts "Scissors beats paper, Player wins!"
  player_score += 1

elsif player_input == "p" && computer_input == "r"
  puts "Player chose paper."
  puts "Computer chose rock."
  puts "Paper beats rock, Player wins!"
  player_score += 1

elsif computer_input == "r" && player_input == "s"
  puts "Computer chose rock."
  puts "Player chose scissors."
  puts "Rock beats scissors, Computer wins!"
  computer_score += 1

elsif computer_input == "s" && player_input == "p"
  puts "Computer chose scissors."
  puts "Player chose paper."
  puts "Scissors beats paper, Computer wins!"
  computer_score += 1

elsif computer_input == "p" && player_input == "r"
  puts "Computer chose paper."
  puts "Player chose rock."
  puts "Paper beats rock, Computer wins!"
  computer_score += 1

elsif computer_input == player_input
  puts "Tie, try again"

else
  puts "Invalid entry , try again"
end

if computer_score > player_score
  puts "Computer wins! The computer score is #{computer_score}"

elsif
   player_score > computer_score
   puts "player wins! The player score is #{player_score}"
end
end
