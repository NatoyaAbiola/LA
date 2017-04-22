def greeting(name)
puts Hello "#{name}"
end

def greeting(name)
  random_greeting = ["Hi", "Yo", "Hey", "Howdy"].sample
  puts "#{random_greeting} #{name}!"
end

def greeting(name, language = nil)
  if language == 'spanish'
    puts "Hola #{name}!"
  elsif language == 'italian'
    puts "Ciao #{name}!"
  elsif language == 'french'
    puts "Bonjour #{name}!"
  else
    puts "Hi #{name}!"
  end
end
