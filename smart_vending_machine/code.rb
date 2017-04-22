puts " What can I get for you? "
print "> "
input = gets.chomp

puts " How many would you like? "
print "> "
input2 = gets.chomp.to_i

input2.times do
  puts "#{input}"
end

puts "Thank you, enjoy your #{input}"
