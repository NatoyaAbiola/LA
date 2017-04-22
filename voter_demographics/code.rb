# First Name, Last Name, Age, Income, Household Size, Gender, Education

voters_demograpics = [
  {"Name" => "Jon Smith", "Age" => "25", "Income" => "50000", "Househol Size" => "1", "Gender" => "Male", "Education Level" => "College"},
  {"Name" => "Jane Davies", "Age" => "30", "Income" => "60000", "Household Size" => "3", "Gender" => "Female", "Education Level" => "High School"},
  {"Name" => "Sam Farelly", "Age" => "32", "Income" => "80000", "Household Size" => "2", "Gender" => "Unspecified", "Education Level" => "College"},
  {"Name" => "Joan Favreau", "Age" => "35", "Income" => "65000", "Household Size" => "4", "Gender" => "Female", "Education Level" => "College"},
  {"Name" => "Sam McNulty", "Age" => "38", "Income" => "63000", "Household Size" => "3", "Gender" => "Male", "Education Level" => "College"},
  {"Name" => "Mark Minahan", "Age" => "48", "Income" => "78000", "HouseholdSize" => "5", "Gender" => "Male", "Education Level" => "High School"},
  {"Name" => "Susan Umani", "Age" => "45", "Income" => "75000", "Household Size" => "2", "Gender" => "Female", "Education Level" => "College"},
  {"Name" => "Bill Perault", "Age" => "24", "Income" => "45000", "Household Size" => "1", "Gender" => "Male", "Education Level" => "Did Not Complete High School"},
  {"Name" => "Doug Stamper", "Age" => "45", "Income" => "75000", "Household Size" => "1", "Gender" => "Male", "Education Level" => "College"},
  {"Name" => "Francis Underwood","Age" => "52", "Income" => "100000", "Household Size" => "2", "Gender" => "Male", "Education Level" => "College"}
]
voters_demograpics[0]["Name"]


# Mary with a report of:

# What is the Average age
require 'pry'
sum = 0
voters_demograpics.each do |voter|
  # binding.pry
  sum += voter["Age"].to_f
end
puts sum / voters_demograpics.size
#
# # Average income
sum = 0
voters_demograpics.each do |voter|
  # binding.pry
  sum += voter["Income"].to_f
end
puts sum / voters_demograpics.size

# Average household size
sum = 0
voters_demograpics.each do |voter|
  # binding.pry
  sum += voter["Household Size"].to_f
end
puts sum / voters_demograpics.size
#
# # Female Percentage
sum = 0
voters_demograpics.each do |voter|
  # sum += voter["Gender"]
  # binding.pry
  # take a look at voter's Gender
  if voter["Gender"] == "Female"
    sum = sum + 1
  end
#   # if the voter's gender is Female
#     # increment the sum by 1
end
puts sum /voters_demograpics.size.to_f

# Male Percentage
sum = 0
voters_demograpics.each do |voter|
  # sum += voter["Gender"]

  # binding.pry
  # take a look at voter's Gender
  if voter["Gender"] == "Male"
    sum = sum + 1
  end
  # if the voter's gender is Male
    # increment the sum by 1
end
puts sum /voters_demograpics.size.to_f
# Unspecified Gender Percentage
sum = 0
voters_demograpics.each do |voter|
  # sum += voter["Gender"]
  # binding.pry
  # take a look at voter's Gender
  if voter["Gender"] == "Unspecified"
    sum = sum + 1
  end

end
puts sum /voters_demograpics.size.to_f
#
# # Percent of those who obtained a college education level

sum = 0
voters_demograpics.each do |voter|
  if voter["Education Level"] == "College"
    sum = sum + 1
  end
end
puts sum /voters_demograpics.size.to_f

# # # Percent of those who obtained a high school education level
sum = 0
voters_demograpics.each do |voter|
  if voter["Education Level"] == "High School"
    sum = sum + 1
  end
end
puts sum /voters_demograpics.size.to_f
# # # Percent of those that did not finish high school
sum = 0
voters_demograpics.each do |voter|
  if voter["Education Level"] == "Did Not Complete High School"
    sum = sum + 1
  end
end
puts sum /voters_demograpics.size.to_f
