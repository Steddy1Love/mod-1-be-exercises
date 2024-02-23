class Bag
    attr_reader :count, :candies

    def initialize
        @count = 0
        @candies = []
    end

    def empty?
        @count == 0
    end

    def add_candy(candy)
        @candies << candy
        @count += 1
    end

    def contains?(candy_name)
      @candies.any? do |candy|
          candy.type == candy_name
          #any? method works here to return boolean       
      end
#     or
      # matching_candy = @candies.find do |candy|
      #   candy.type == candy_name
      #  end       
      # !!matching_candy
    end
end