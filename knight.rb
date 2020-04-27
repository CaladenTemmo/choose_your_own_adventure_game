require_relative"./docks.rb"
# dskjfjs
class Knight
    def char_one_method(name, name2, king, princess)
        jake = "jake".green
        
        system "clear"
        intro_string =  "*You wake up on the cobble road in front of a bar with little memory staring into the bright sun as a man approaches you *Hello noble knight what is thy name
Sir #{name}: My name is Sir #{name}.
Hello Sir #{name} *the man hands you a scroll which says* hello dost thou accept the quest to save someone dear to me.
*With the glare from the sun in your eyes you cant see who is speaking* 
Sir #{name}: Who art thou and what dost thou want
#{king}: I am #{king} and i want to know if thou'll accept my proposal and save my daughter".each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
        } 
        
                loop do
                    "
*Type yes or no".each_char { |char| 
                        putc char     
                        $stdout.flush
                        sleep 0.05
                        } 
                    puts " "
                    answer = gets.chomp
                    if answer == "yes"
                        break
                    elsif answer == "no"
                        "Sir #{name}: Sorry I'm not in the mood *stumbles over* wherefore don't thou go just ask my wizard friend #{name2} the grey or the secret elf #{jake}
#{king}: What elf? thou art drunk thither art nay such thing as elves. But pray i am asking once again for thy help".each_char { |char| 
                        putc char     
                        $stdout.flush
                        sleep 0.05
                        } 
                    else
                        "#{king}: i dont speak this languge i need a yes or no answer".each_char { |char| 
                        putc char     
                        $stdout.flush
                        sleep 0.05
                        }
                    end
                end
            system "clear"
    "#{king}: Thank thou so much.
*you leave going north for your jorney*.
*You run into a fork in the road and read a sign which reads*
*Go left towards the docks. Go right towards the bridge*
*Type left or right*".each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
        } 
        puts " "
        road = gets.chomp
                    if road == "left"
                        docks = Docks.new
                        docks.char_one_method(name, name2, king, princess)
                    elsif road == "right"
                        bridge = Bridge.new
                        bridge.char_one_method(name, name2, king, princess)
                    else
                        "Choose your path".each_char { |char| 
                        putc char     
                        $stdout.flush
                        sleep 0.05
                        }
                    end
    end
end
