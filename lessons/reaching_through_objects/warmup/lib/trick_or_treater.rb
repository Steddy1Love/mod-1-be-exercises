class TrickOrTreater
    attr_reader :dressed_up_as

    def initialize(costume)
        @dressed_up_as = costume.style
        @count = 0
    end

    def bag
        Bag.new
    end
end