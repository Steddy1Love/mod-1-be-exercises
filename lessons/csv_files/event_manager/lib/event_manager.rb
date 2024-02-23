# ./lib/event_manager.rb
require "csv"
puts "EventManager initialized."

class EventManager
    def create(file_path)
        attendees = []
        CSV.foreach(file_path, header: true, header_converters: :symbols)
            attendees << Attendee.new(
            row[:id],
            row[:first_name],
            row[:last_name],
            row[:zipcode]
            )
    end
end