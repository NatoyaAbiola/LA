require 'spec_helper'

describe Dwelling do
  let (:info) {Dwelling.new("Rosedale","Toronto","ON", "M5A 3K3")}
  it 'has an address' do
    expect(info.address).to eq("Rosedale")
  end

  it 'has a city' do
    expect(info.city).to eq("Toronto")
   end

   it 'has a state' do
     expect(info.state).to eq("ON")
    end

    it 'has a zip' do
      expect(info.zip).to eq("M5A 3K3")
    end
end
