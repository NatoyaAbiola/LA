names = [
  "John", 4,
  "Hannah",
  "Mark",
  "Sam",
  "Anna",
  "Sandra",
  "Susan",
  "Julie",
  "Yanni",
  "Eve",
  "Sunny",
  "Matt"
]


# Accessing elements within our `names` array:

1. Retrieve the first name from the `names` array.
names [0]
2. Retrieve the second name from the `names` array.
names [1]
3. Retrieve the third name from the `names` array.
names [2]
4. Retrieve the last name from the `names` array.
names [-1]
5. Retrieve the second-to-last name from the `names` array.
names[-2]
6. Create a new array with the first two elements in the `names` array.
names[0..1]
7. Create a new array with the first four elements in the `names` array.
names[0..3]


## Manipulating the `names` array:

# 1. Add your name to the `names` array.
names.push ("Natoya")
# 2. Replace the first element in the array with your best friend's name.
names [0] = "Ramil"
# 3. Reassign the last element in the array with the name of your arch-nemesis.
names [-1] = "John"

## Asking questions about our `names` array:

# 1. How many names are on the list? 13
names.length
puts "The are #{names.count} names in the list."

# 2. Who is the third name on the list? Mark
puts "The third name on the list is #{ names [2]}"

#  3. Output each name and where it occurs in the array.
names.each_with_index do |names, index|
  puts "#{names} is found at the #{index} index"
end

#  4. Sort the names in alphabetical order.
puts names.sort.inspect

#  5. Sort the names by smallest number of characters to largest.
puts names.sort_by {|name| name.length}.inspect
#  6. Supply the sum of all the characters in the list of names.
# names.chars
sum_of_characters = names.inject (0) do |sum, name|
  sum += name.length
end
puts "#{sum_of_characters}"

#  7. Do any of the names start with "y"?
name_starting_with_Y = names.any? do |name|
  name.downcase.start_with? ("y")
end
if name_starting_with_Y
  puts "There is a name starting with Y "
else
  puts "There are no names starting with Y."
end
#  8. Are all of the names 3 characters long or larger?
names_with_three_characters_and_longer = names.all? do |name|
  name.size >= 3
end
if names_with_three_characters_and_longer
  puts "All names have 3 charatcters"
else
puts "There is at least 1 name that is shorter than 3 characters"
end
# 9. Using the `names` array, create a new array containing only palindrome names.
palindrome = names.select {|name|name.downcase == name.reverse.downcase}
puts palindrome.inspect
#  10. Find the first name that starts with "S".
first_names_that_starts_with_s = names.find {|name|name[0].downcase == 's'}
puts first_names_that_starts_with_s

# 11. Create a new array containing names that start with "S".
s_names = names.select { |name| name[0].downcase == 's'}
puts s_names.inspect
#  12. Create a new array of names ending with a vowel.
vowel_ending_names = names.select { |name| name[-1] == 'a' || name[-1] == 'e'|| name[-1] == 'i'|| name[-1] == 'o'|| name[-1] == 'u'}
puts vowel_ending_names.inspect
#  13. Divide the names into groups of 3.
names.each_slice(3){|new_array| puts new_array.inspect}
