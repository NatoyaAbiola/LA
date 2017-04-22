class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

class Person
  attr_reader :first_name, :last_name

  def initialize(name, last_name = nil)
    if last_name.nil? #No last name given, so name is the full name
      full_name = name.split
      @first_name = full_name[0]
      @last_name = full_name[1]
    else #First and Last names are given, name being the first name
      @first_name = name
      @last_name = last_name
    end
  end
end

def initialize(name, last_name = nil, middle_name = nil)
  if last_name.nil? # 1 argument
    full_name = name.split
    @first_name = full_name[0]
    if full_name.length == 2
      @last_name = full_name[1]
    else
      @middle_name = full_name[1]
      @last_name = full_name[2]
    end
  elsif middle_name.nil? # 2 arguments
    @first_name = name
    @last_name = last_name
  else # 3 arguments
    @first_name = name
    @last_name = last_name
    @middle_name = middle_name
  end
end
end
