# puts "what is your first name?"
# first_name = gets.chomp
#
# puts "what is your last name?"
# last_name = gets.chomp
#
# puts "what is your address?"
# street = gets.chomp
#
# puts "what is your city"
# city = gets.chomp
#
# puts "what is your state?"
# state = gets.chomp
#
# puts "what is your postal code?"
# postal_code = gets.chomp

def ask(question)
  puts question
  gets.chomp
end
#
# first_name = ask("what is your first name?")
#
# last_name = ask("what is your last name?")
#
# street = ask("what is your address?")
#
# city = ask("what is your city?")
#
# state = ask("what is your state?")
#
# postal_code = ask("what is your postal code?")


def get_address
  address_map = {}
  address_map[:first_name] = ask("what is your first name?")

  address_map[:last_name] = ask("what is your last name?")

  address_map[:street] = ask("what is your address?")

  address_map[:city] = ask("what is your city?")

  address_map[:state] = ask("what is your state?")

  address_map[:postal_code] = ask("what is your postal code?")

  address_map

end

billing_address = get_address
puts billing_address.inspect
# shipping_address = get_address

# Rectangle stats (perimeter, area)

def perimeter(length,width)
  (2 * length) + (2 * width)
end

def rectangle_statistics(length, width)
  {
  length: length,
  width: width,
  perimeter: perimeter(length, width),
  area: length * width
 }
end
rectangle_statistics(3,4)

# rectangle(3,4) => {
#   length: 3,
#   width: 4,
#   perimeter: 14,
#   area: 12
# }
