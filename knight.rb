require_relative"./docks.rb"

class Knight
    def char_one_method (name)
        system "clear"
        intro_string =  "*You wake up on the cobble road infront of a bar with little memory staring into the bright sun as a man approches you *Hello noble knight what is thy name
        Sir #{name}: My name is Sir #{name}.
        Hello Sir #{name} *the man hands you a scroll which says* hello dost thou accept the quest to save my daughter the princess
        *With the glar from the sun in your eyes you cant see who is speaking* 
        Sir #{name}: Who art thou and what dost thou want
        King Andrew: I am the king Andrew and i want to know if thou'll accept my proposal and save my daughter".each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
        } 
        
                loop do
                    "*Type yes or no".each_char { |char| 
                        putc char     
                        $stdout.flush
                        sleep 0.05
                        } 
                    answer = gets.chomp
                    if answer == 'yes'
                        break
                    elsif answer == "no"
                        "Pray i am asking once again for thy help".each_char { |char| 
                        putc char     
                        $stdout.flush
                        sleep 0.05
                        } 
                    else
                        "i need a yes or no answer".each_char { |char| 
                        putc char     
                        $stdout.flush
                        sleep 0.05
                        }
                    end
                end
            system "clear"
    "King Andrew: Thank thou so much *you leave going north for your jorney.
        *You run into a fork in the road and read a sign which says
        Sir #{name}: Go left towards the docks. Go right towards the bridge".each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
        } 
        road = gets.chomp
                    if road == 'left'
                        docks = Docks.new
                        docks.char_one_method (name)
                    elsif road == "right"
                        bridge = bridge.new
                        bridge.char_one_method (name)
                    else
                        "Choose your path".each_char { |char| 
                        putc char     
                        $stdout.flush
                        sleep 0.05
                        }
                    end
    end
end
