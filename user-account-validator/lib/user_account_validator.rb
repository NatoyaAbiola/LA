require 'pry'

class EmailMissingError < StandardError
end

class UserAccountValidator

  attr_reader :email, :username, :name

  def initialize(user)
    @email = user[:email]
    @username = user[:username]
    @name = user[:name]
  end

  def email_empty?
    if @email.nil? || @email.empty?
      raise EmailMissingError, "This email is not valid!"
    elsif !@email.each_char.include?("@")
      raise "This email is missing the '@'!"
    end
  end

  def username_empty?
    if @username.nil? || @username.empty?
      raise "This username is not valid!"
    end
  end
  
  def name_empty?
    if @name.nil? || @name.empty?
      raise "This name is invalid!"
    end
  end
end
