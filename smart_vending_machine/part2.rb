puts " What can I get for you? "
print "> "
input = gets.chomp

puts " How many would you like? "
print "> "
input2 = gets.chomp

while input2 == "tons" do
  puts "#{input}"

  number = rand 0..14

if number == 0
  break

end
end
