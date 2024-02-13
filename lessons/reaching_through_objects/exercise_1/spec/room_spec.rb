require './lib/room'

RSpec.describe Room do

    it 'exists' do
        room_1 = Room.new("bathroom")

        expect(room_1).to be_instance_of (Room)
    end

    it 'has a name' do
        room_1 = Room.new("Bathroom")

        expect(room_1.name).to eq("Bathroom")
    end
end
