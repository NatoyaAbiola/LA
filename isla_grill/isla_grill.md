puts "Please enter the cost of your meal : $ "
meal_cost = Float(gets)
puts "Please the tip percentage you'd like to leave : "
tip_percent = Float(gets)

tip_value = meal_cost * tip_percent/100
total_cost = meal_cost+ tip_value
puts "The total bill is"
print total_cost
