require_relative"./sea_monster.rb"

class Docks
    def char_one_method (name)
        intro_string = "*You hed toward the docks and see a man with a ship and ask to borrow one of his row boats and he nicely agrees to give it to you
        *Press enter to continue*".each_char { |char| 
            putc char     
            $stdout.flush
            sleep 0.05
            } 
            enter = gets
            if "/n"
                system "clear"
                sea_monster = Sea_Monster.new
                sea_monster.char_one_method (name)
end
end
end





