require './lib/apartment'
require './lib/room'

RSpec.describe Apartment do
    before(:each) do
        @apartment_1 = Apartment.new
    end

    it 'exists' do
        expect(@apartment_1).to be_instance_of(Apartment)
    end

    it 'is not rented by default' do
        expect(@apartment_1.is_rented?).to be false
    end
    
    it 'can be rented' do
        @apartment_1.rent
        expect(@apartment_1.is_rented?).to be true
    end

    it 'can have rooms' do
        bathroom = Room.new("bathroom")
        expect(@apartment_1.rooms.count).to eq(0)

        @apartment_1.add_room(bathroom)
        @apartment_1.add_room(Room.new("laundry"))
        @apartment_1.add_room(Room.new("kitchen"))
        @apartment_1.add_room(Room.new("bedroom"))

        expect(@apartment_1.rooms.count).to eq(4)
    end

    it 'can list rooms by name aphabetically' do
        bathroom = Room.new("bathroom")
        @apartment_1.add_room(bathroom)
        @apartment_1.add_room(Room.new("laundry"))
        @apartment_1.add_room(Room.new("kitchen"))
        @apartment_1.add_room(Room.new("bedroom"))

        expect(@apartment_1.list_rooms_by_name_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "laundry"])
    end
end