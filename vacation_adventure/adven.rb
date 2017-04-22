dice = rand (3) + 1
print "you rolled "
puts dice
puts "The adventure you should go on is:"

if dice == 1
  puts "sailing"
elsif dice == 2
  puts "the animal reservation"
elsif dice == 3
  puts "jet skiing"
# else # default behavior
#   puts "your adventure is not happening"
end
