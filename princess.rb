class Princess
    def char_one_method (name)
        "*you finally make it to the castle, kill the dragon and break down the locked door to save princess Emily*
        Princess Emily: Thank thou so much for saving me".each_char { |char| 
            putc char     
            $stdout.flush
            sleep 0.05
            } 
    end
end