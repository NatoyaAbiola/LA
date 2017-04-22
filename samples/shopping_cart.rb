prices = {}
quantities = {}

while true
  puts "What is the name of the item?"
  name = gets.chomp

if prices[name].nil?
  puts "What is the price of the item?"
  prices[name] = gets.chomp.to_f
end

puts "How many would you like to add?"
if quantities[name].nil?
    quantities[name] = 0
end
quantities[name] += gets.chomp.to_i

  puts "Would you like to continue? (y/n)\n"
  continue = gets.chomp
  if continue.downcase == "n"
    break
  end
end

# require 'pry'
# binding.pry
total = 0
prices.each do |name,price|
  subtotal = quantities[name] * price
  puts "(#{quantities[name]}) #{name}: #{price} ea: #{subtotal}"
  total = total + subtotal
end

# total = 0
# prices.each do |price|
#   total = total + price
# end
# puts "You total is $#{total}"
