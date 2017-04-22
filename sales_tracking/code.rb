puts "Please enter your values"

sum = 0.0
while sum < 100 do
  input = gets.chomp.to_f
  sum = sum + input
end

puts "You've reached 100!"
