class SuperHero
  attr_reader :public_identity

  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    ""
  end

  def weakness
    ""
  end

  def backstory
    ""
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

  private
  attr_reader :secret_identity
end

class Speedster < SuperHero

  def backstory
    "He is fater than Usain Bolt"
  end

  def powers
    "He can read a book in 5 minutes"
  end

  def weakness
    "He has no time to talk"
  end

  def speed_in_mph
    60000
  end
end

class Brawler < SuperHero
  def backstory
    "He is an only child from Michigan"
  end

  def powers
    "He can make anyone smile"
  end

  def weakness
    "Human"
  end

  def health
    2000
  end
end

class Detective < SuperHero
  def backstory
    "He is the oldest of 10 siblings"
  end

  def powers
    "He can transform into any superhero"
  end

  def weakness
    secret_identity
  end

  def secret_identity
    "Luke Bayne"
  end

  def speed_in_mph
    10
  end
end

class Demigod < SuperHero

  def backstory
    "He loves Beyonce"
  end

  def powers
    "He can bust a move"
  end

  def weakness
    "He is an internet troll"
  end

  def home
    "Cosmic Plane"
  end
end

class JackOfAllTrades < SuperHero

  def backstory
    "He is from Texas and has more skills than Kanye West"
  end

  def powers
    "He can rap better than Kanye"
  end

  def weakness
    "He is shorter than Kanye"
  end

  def species
    "Alien"
  end

  def home
    "Venus"
  end

  def psychic?
    true
  end
end

class WaterBased < SuperHero

  def backstory
    "is the best paint for toddlers"
  end

  def powers
    "He is washable"
  end

  def weakness
    "He can stain the carpet"
  end

  def home
    "Earth's Oceans"
  end

  def fans_per_thousand
    5
  end

  def psychic?
    true
  end
end
