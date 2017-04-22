require 'pry'

score = 0
puts "Welcome to the Guessing Game! What difficulty would you like to play? "

puts "Type easy or hard. "
print "> "

player_input = gets.chomp.downcase

if player_input == "easy"
   random_number = rand(10) + 1
   puts "I have picked a number between 1 and 10. Now guess a number!"

elsif player_input == "hard"
   random_number = rand(20) + 1
   puts "I have picked a number between 1 and 20. Now guess a number!"
end

binding.pry

score += 1
player_guess = gets.chomp

while player_guess != random_number.to_s
  puts "That is wrong,please try again!"
  score += 1
  player_guess = gets.chomp
end

puts "Congratulations! You win!"

puts "Your score is:" + score.to_s
