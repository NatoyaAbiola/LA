require 'pry'
puts " What can I get for you? "
print "> "
item = gets.chomp

puts " How many would you like? "
print "> "
quantity = gets.chomp

while quantity.index('tons') != nil do

  number = rand 0..14
  binding.pry
  while number != 0
    puts "#{item}"
    if number == 0
      break
    end
  end
end


#   array_word = ["I", "want", "tons"]
#   array = [2]
#   number = rand 0..14
# if number == 0
#   break
#
# end
# end
