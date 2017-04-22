require 'rubygems'
require 'colorize'
#
def random_color(whitelisted_colors = nil)
  rand_num = rand(5) + 1
  # return String.colors.sample
  return whitelisted_colors.sample
end
#
# 5.times {puts random_color}

def randomly_colorize(string, colors = nil)
  "#{string}".colorize(random_color(colors))
end
randomly_colorize ("Natoya")
randomly_colorize ("Natoya", [:red, :green])

puts "What is your name? I am going to colorize it."
supplied_name = gets.chomp

return_value = randomly_colorize(supplied_name, [:red, :green])
puts "Your randomly colorize name is:" + return_value
# require 'pry'
# binding.pry
