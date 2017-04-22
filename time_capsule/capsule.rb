number = 0

puts "Hello there! Welcome to the Time Capsule Maker!"
puts  "What is your name?"
name = gets.chomp

puts "your name is #{name}"

time_capsule = []

while true
puts "What would you like to add to your time capsule #{name}? Type 'FINISHED' to stop adding items."
item = gets.chomp

puts "How many of this item would you like?"
number = gets.chomp

if item == "FINISHED"
      break

elsif
puts item  +  "#{(number)}"
number = number + number

else
  time_capsule << item
end

end
puts "The first item is #{time_capsule.first}"

if time_capsule == []
   puts "Your time capsule is empty!"
else
   puts "#{name}, thanks for using the Time Capsule Maker. Here is a list of the items in your time capsule:"
time_capsule.each do |item|
   puts "* #{item}  #{number}"
  end
end
