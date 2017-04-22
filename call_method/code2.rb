# def captains_announcement(ship, captain)
#   "#{ship} will be captained by #{captain} for the flight."
# end
#
# def launch_ship(ship)
#   "#{ship} has launched into orbit!"
# end
#
# ship_name = "Serenity"
# ship_captain = "Malcolm Reynolds"
#
# puts captains_announcement(ship_name, ship_captain)
# puts launch_ship(ship_name)
#
# def captains_announcement(ship, captain)
#   "#{ship} will be captained by #{captain} for the flight."
# end
#
# def launch_ship(ship)
#   "#{ship} has launched into orbit!"
# end
#
# ship = {
#   name: "Serenity",
#   captain: "Malcolm Reynolds"
# }
#
# puts captains_announcement(ship[:name], ship[:captain])
# puts launch_ship(ship[:name])

# def captains_announcement(ship, captain)
#   "#{ship} will be captained by #{captain} for the flight."
# end
#
# def launch_ship(ship, fuel)
#   if fuel > 50
#     "#{ship} has launched into orbit!"
#   elsif fuel > 25
#     "It was a little touch and go at first, but #{ship} managed to make it into orbit!"
#   else
#     "#{ship} struggled to take flight and promptly crashed back down to the surface."
#   end
# end
#
# ship = {
#   name: "Serenity",
#   captain: "Malcolm Reynolds",
#   fuel: 15
# }
#
# puts captains_announcement(ship[:name], ship[:captain])
# puts launch_ship(ship[:name], ship[:fuel])

# class Spaceship
#   def initialize(name, captain, fuel)
#     @name = name
#     @captain = captain
#     @fuel = fuel
#   end
#
#   def captains_announcement
#     "#{@name} will be captained by #{@captain} for the flight."
#   end
#
#   def launch
#     if @fuel > 50
#       "#{@name} has launched into orbit!"
#     elsif @fuel > 25
#       "It was a little touch and go at first, but #{@name} managed to make it into orbit!"
#     else
#       "#{@name} struggled to take flight and promptly crashed back down to the surface."
#     end
#   end
# end
#
# ship = Spaceship.new("Serenity", "Malcolm Reynolds", 45)
#
# puts ship.captains_announcement
# puts ship.launch


class Person
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hi there, #{@name}!"
  end

  def part_ways
    puts "Bye now, #{@name}!"
  end

  def address=(address)
    @address = address
  end

  def address
    @address
  end
end
