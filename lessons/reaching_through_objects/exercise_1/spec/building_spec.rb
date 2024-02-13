require './lib/apartment'
require './lib/room'
require './lib/building'

RSpec.describe Building do
    before(:each) do
        @building_1 = Building.new("623", "Savills Apartment Building")
    end

    it 'exists' do
        expect(@building_1).to be_instance_of(Building)
    end

    it 'has a name' do 
        expect(@building_1.name).to eq("Savills Apartment Building")
    end

    it 'has a number' do
        expect(@building_1.number).to eq("623")
    end

end