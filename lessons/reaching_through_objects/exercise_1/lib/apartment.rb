class Apartment
    attr_reader :rooms

    def initialize
        @rented = false
        @rooms = []
    end

    def is_rented?
        @rented
    end

    def rent
        @rented = true
    end

    def add_room(room_object)
        @rooms << room_object
    end

    def list_rooms_by_name_alphabetically
        list_name = @rooms.map do |room|
            room.name
        end
        list_name.sort 
    end
end