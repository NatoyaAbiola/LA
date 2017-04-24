require_relative 'capacity'

class Truck
  include Capacity
  attr_reader :max_capacity, :current_occupancy
  def initialize(max_capacity, currently_occupancy)
    @max_capacity = max_capacity
    @currently_occupancy = current_occupancy
  end

end
