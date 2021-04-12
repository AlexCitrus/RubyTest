class Int_to_alphabet

    attr_reader :integer

    def initialize(integer)
        @integer = integer
    end
    
    def convert
        if @integer.to_i < 1
            return "Oops! invalid input!"
        end
        unless @integer.to_i < 1
            
            alpha = "A"
           (2..@integer).to_a.each do 
            alpha = alpha.succ        # succ method returns the immediate successor of an int or char
                                      # 1.succ => 2    # "A".succ => "B" 
        end
        return "#{@integer} => #{alpha}"
    end       
    end

end


# test = Int_to_alphabet.new(5)

# [2, 3, 4, 5]

# A.succ = B 
# B.succ = C  
# C.succ = D 
# D.succ = E

# puts test.convert // 5 => E