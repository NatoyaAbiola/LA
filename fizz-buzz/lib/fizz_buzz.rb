#write a program that prints out the numbers from 1 to 100, each on a new line.

#- If the number is divisible by 3, print out the word "Fizz" instead.
#- If the number is divisible by 5, print out the word "Buzz" instead.
#- If the number is divisible by 3 and 5, print out the word "FizzBuzz" instead.

puts "Printing all numbers between 1 and 100!"

counter = 0
while counter <= 100 do
  #print "#{counter}\n"
  counter = counter + 1

  if counter % 3 == 0 && counter % 5 == 0
    puts "Fizz Buzz"
  elsif counter % 3 == 0
    puts "Fizz"
  elsif counter % 5 == 0
    puts "Buzz"

  end
end
