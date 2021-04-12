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

tae = Int_to_alphabet.new(1000)

tae.convert
