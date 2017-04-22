prices = []
while true
  puts "What is the price of the item?"
  price = gets.chomp
  prices << price.to_f

  puts "Would you like to continue? (y/n)\n"
  continue = gets.chomp
  if continue.downcase == "n"
    break
  end
end

total = 0
prices.each do |price|
  total = total + price
end

puts "You total is $#{total}"
