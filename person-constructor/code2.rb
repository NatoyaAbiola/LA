# Object Oriented Programming
# designing applications with real-world metaphor
# class


# 1. State
  # strings, arrays, hashes, any value
  # variables that contain these values
# 2. Behavior
  # methods


# create a container for something we want to represent in our application
  # container contains aformentioned state and Behavior
  # object is container

# blueprint for how containers are made
  # class is a blue print for containers

# Attibute Readers, Writers, Accessors

class Student
  attr_reader(:last_name)
  attr_accessor(:first_name)

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    # some_var = "some value"
  end


  # def some_other_method
  #   @name
  #   some_var # NoMethoderror
  # end

  # def first_name
  #   @first_name
  # end

  # def last_name
  #   @last_name
  # end

  # def first_name=(first_name)
  #   @first_name = first_name
  # end

  def full_name
    # [@first_name, @last_name].join(" ")
    "#{@first_name} #{@last_name}"
  end
end

@name # nil

puts "what is the students name"
name = gets.chomp

student_1 = Student.new("John", "Doe") # object is now stored in student variable
student_2 = Student.new("Jane", "Doe") # completey separate object

student_1.first_name #=> "John"
student_1.first_name = "Joe"

student_1.full_name #=> "John Doe"
student_2.full_name #=> "Jane Doe"

# "hello".split("").each { |c| print c, ' ' }
