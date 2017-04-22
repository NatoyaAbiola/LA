puts "Welcome to the dice game!"

dice_roll1 = rand (6) + 1
dice_roll2 = rand(6) + 1
total = dice_roll1 + dice_roll2

print " You rolled a : "
puts " #{dice_roll1} and #{dice_roll2}"

print "The total is :"
puts total
