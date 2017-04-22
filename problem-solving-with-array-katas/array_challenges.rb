long_string = "Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum"
puts long_string

word_array = long_string.split (' ')
puts word_array.inspect
#
# # building a new array
word_lengths = word_array.map do |word|
  word.size
end
puts word_lengths.inspect
puts word_lengths.max


# You're given a string of numbers 1 - 27.
# 1 - 26 represents the correlating letter in the alphabet
# 27 represents a space
# Decode the following message with Ruby: "7 15 15 4 27 4 15 7"
# Create an array where the position of the letter matches the letter's place in the alphabet.

# 'good dog'
secret_message = "7 15 15 4 27 4 15 7"
digits = secret_message.split (' ')
# puts digits.inspect
characters = digits.map do |digit_string|
   number = digit_string.to_i
   if number == 27
     ' '
else
    (96 + number).chr
  end
end

puts characters.join ('')

# Problem: Given a random array of numbers,
 # return a new array containing only the prime numbers
 # found in the collection.
# A prime number is only divisible by itself and 1.

random_numbers = []
10.times do
  random_numbers << rand(9) + 1
end

primes = []
random_numbers.each do |number|
  prime = true
  (2...number).to_a.each do |divisor|
    if number % divisor == 0
      prime = false
      puts "#{number} is not prime"
      break
    end
  end
  if prime
    primes << number
  end
end

puts primes.inspect
