items = ["old paperback book","potato", "red onion", "dried lemon", "frankincense", "medicinal herb", "saffron", "glass spice jar" , "red fabric", "orange fabric", "handicrafts" , "small Persian rug" ,"medium Persian rug", "large Persian rug", "extra large Persian rug"]
puts " Welcome to the Online Souq. What is your name?"
name = gets.chomp
puts "Welcome #{name}"

puts "Here is a list of items you can choose to buy!:"
items.each do |item|
  puts " #{item}"
end

input = ""
shopping_cart = Array.new

while true
  puts "What would you like to buy? (type FINISHED when you're done)"
  print "> "
  user_input = gets.chomp.downcase
  shopping_cart << user_input

   if user_input == "finished"
      break
  #else
    #puts "Sorry, that item is not available!"
   end
end

puts "#{name}, thanks for trying our online Souq. Here is a list of items in your cart!:"

shopping_cart.each do |item|
  if items.include?(item)
    puts "* #{item}"
  else
    puts "Btw, we noticed you tried entering in some items that aren't part of the online Souq. We don't have the following items yet but will let you know if they show
  up!:"
    puts "* #{shopping_cart}"
  end
end
