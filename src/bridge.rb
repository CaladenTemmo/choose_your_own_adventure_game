require_relative"./troll.rb"

class Bridge
    def char_one_method(name, name2, king, princess)
        intro_string = "*You start heading towards the bridge*
*Press enter to continue*".each_char { |char| 
            putc char     
            $stdout.flush
            sleep 0.05
            } 
            enter = gets
            if "/n"
                system "clear"
                troll = Troll.new
                troll.char_one_method(name, name2, king, princess)
end
end
end


