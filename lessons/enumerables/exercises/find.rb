# 1. Using #each, write the code to find the first sister over four letters in length.
# 2. Once you get the method below to work using #each, refactor your code to use #find. 

def find_first_long_named_sister
    
    sisters = ["Rose", "Kathleen", "Eunice", "Patricia", "Jean"]
  
     sisters.find do |sis|
        sis.length > 6
    end

    # should return "Kathleen"
end



p find_first_long_named_sister