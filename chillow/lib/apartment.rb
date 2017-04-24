require "capacity"
require 'dwelling'


class Apartment < Dwelling
  include Capacity

  attr_reader :address,:city_or_town, :zip_code, :rent,:lease_start_date,:lease_completion_date
  def initialize (address,city_or_town, zip_code, rent,lease_start_date,lease_completion_date,max_capacity,current_occupancy)
    super(adress, city, state, zip_code)
    @rent = rent
    @lease_start_date = lease_start_date
    @lease_completion_date = lease_completion_date
    @max_capacity = 3
    @current_occupancy = []
  end
end
