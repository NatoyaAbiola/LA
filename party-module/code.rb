require_relative 'personalized_havoc_error'
module PartyGoer

  def initialize
    @drinks = 0
  end

  def sing
    "Party rock is in the house tonight
Everybody just have a good time
And we gon' make you lose your mind
Everybody just have a good time"
  end

  def drink
    bottoms_up = true
    if @drinks >= 3
      false
    end
    @drinks += 1
    bottoms_up
  end


  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end

  def invited?
    true
  end

end
