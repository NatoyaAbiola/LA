require 'spec_helper'

describe House do
  let (:info) {House.new("Rosedale","Toronto","ON", "M5A 3K3", 5000000) }

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
      
     it 'has an asking price' do
    expect(info.asking_price).to eq(5000000)
  end
end
