print "Please supply a number>"
number = gets.chomp
number = number.to_i

require "pry"

if number % 2 == 0
  binding.pry
  puts "It's even!"
else
 puts "It's odd!"
end

if number >= 0
  puts "It's positive"
else
  puts "It's negative"
end
