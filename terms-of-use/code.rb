# ***DISCLAIMER***
# This code may not work the way you expect it to.
# By using this temperamental program, you agree not to
# sue the pants off of its creator.
# ***


def disclaimer
  "***DISCLAIMER***
  This code may not work the way you expect it to.
  By using this temperamental program, you agree not to
  sue the pants off of its creator."
end

puts disclaimer

acceptance = 'n'
while acceptance.downcase != 'y'
  disclaimer
  puts "You must accept our disclaimer to proceed! Do you accept? (y/n)"
  acceptance = gets.chomp
end


puts "3 + 2 = #{rand(6)}"
