class Attendee
     attr_reader :id, 
                :name,
                :zipcode

    def initialize(id, first_name, last_name, zip_code)
        @id = id
        @name = first_name + " " + last_name
        @zipcode = zip_code || "00000"
    end

    def display
        "#{id}: #{name}, #{zipcode}"
    end

    def clean_zip
        @zipcode.rjust(5, "0")
        @zipcode.length > 5
    end
end