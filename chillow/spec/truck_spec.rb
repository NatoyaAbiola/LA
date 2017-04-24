require 'spec_helper'

describe 'Truck' do
  let (:truck) {Truck.new(75, [])}

  it 'has a maximum number of boxes it can carry' do
    expect(truck.max_capacity).to eq(75)
  end
  it 'has a list of all boxes in the truck' do

    expect(truck.current_occupancy).to eq([])
  end

  it 'boxes should have an owner label' do
    med_truck = Truck.new(75, [Box.new("John", "Jones")])
    expect((med_truck.current_occupancy)[0].first_name).to eq("John")
  end

  describe "#full?" do

    it 'should return true if number of tenants has reached max_capacity' do
      med_truck2 = Truck.new(3, [1, 2, 3])
      expect(med_truck2.full?).to eq(true)
    end
    it 'should return false if number of tenants has not reached max_capacity' do
      med_truck = Truck.new(75, [Box.new("John", "Jones")])
      expect(med_truck.full?).to eq(false)
    end
  end
  #
  describe "#add_box" do
    it 'should add a box to the truck current_occupancy' do
      truck.add_box("Rachel", "Smith")
      expect(truck.current_occupancy.length).to eq(1)
    end
  end

  describe "#remove_box" do
    it 'should remove a box from the truck current_occupancy' do
      med_truck = Truck.new(75, [Box.new("John", "Jones")])
      med_truck.remove_box("John", "Jones")
      expect(med_truck.current_occupancy.length).to eq(0)
    end
  end


end
