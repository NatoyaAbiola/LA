class Student
  attr_reader :first_name, :last_name, :grades

  def initialize(first_name, last_name, grades)
    @first_name = first_name
    @last_name = last_name
    @grades = grades
  end
end

class Student
  attr_reader :first_name, :last_name, :grades

  def initialize(information_hash)
    @first_name = information_hash[:first_name]
    @last_name = information_hash[:last_name]
    @grades = information_hash[:grades]
  end
end

class Student
  attr_reader :first_name, :last_name, :grades

  def initialize(information_hash)
    @first_name = information_hash[:first_name]
    @last_name = information_hash[:last_name]
    @grades = information_hash[:grades]
    @average = calculate_average
  end

  def calculate_average
    sum_of_grades = 0.0
    @grades.each do |grade|
      sum_of_grades += grade
    end
    sum_of_grades/@grades.length
  end
end
