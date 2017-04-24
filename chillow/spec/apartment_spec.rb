require 'spec_helper'

describe Apartment do
  let (:info) {Apartment.new("Rosedale","Toronto","ON", "M5A 3K3", 3000, [6, 1, 2017], [6, 1, 2018], 3, max_capacity)}
  let (:current_tenants) {[Occupant.new("John", "Jones"),
  Occupant.new("Rachel", "Smith"),Occupant.new("Meghan", "Joseph")]}

  it 'has an address' do
    expect(info.address).to eq("Rosedale")
  end

  it 'has a city' do
    expect(info.city).to eq("Toronto")
   end

   it 'has a state' do
     expect(info.province).to eq("ON")
    end

    it 'has a zip' do
      expect(info.postal_code).to eq("M5A 3K3")
     end

     it 'has a monthly rent price' do
    expect(info.asking_price).to eq(3000)
      end

  it 'has a lease start date' do
    expect(info.start_date).to eq([6, 1, 2017])
     end
  it 'has a lease completion date' do
    expect(info.completeion_date).to eq([6, 1, 2018])
     end
  describe "#full?" do
    it 'should have a maximum capacity' do
      expect(info.max_capacity).to eq(3)
      end
    end
    it 'should have tenants' do
      expect(info.current_occupancy).to eq(true)
    end
    it 'should return true if number of tenants has reached max_capacity' do
      expect(info.full?).to eq(true)
    end
    it 'should return false if number of tenants has not reached max_capacity' do
      status = {Apartment.new("Rosedale","Toronto","ON", "M5A3K3", 3000, [6, 1, 2017], [6, 1, 2018], 3
      [Occupant.new("John", "Jones")])
      expect(status.full?).to eq(false)
    end

    describe "#add_roomate" do
      it 'should add a roomate to tenants' do
        info.add("Ryan", "Gossling")
        expect(info.current_occupancy.length).to eq(4)
      end
    end

    describe "#remove_roomate" do
      it 'should remove a roomate from tenants' do
        info.remove("Rachel", "Smith")
        expect(info.current_occupancy.length).to eq(2)
      end
  end
end
