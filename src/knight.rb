require_relative"./docks.rb"
require_relative"./bridge.rb"

class Knight
    def char_one_method(name, name2, king, princess)
        jake = "jake".green
        name3 = "Mystery Man".magenta
        system "clear"
        intro_string =  "*You wake up on the cobbled road in front of a bar with little memory staring into the bright sun as a man approaches you*
#{name3}: Hello noble knight what is thy name.
Sir #{name}: My name is Sir #{name}.
#{name3}: Hello Sir #{name}.
*The man hands you a scroll which says* 
*Hello dost thou accept the quest to save someone dear to me*
*With the glare from the sun in your eyes, you can't see who is speaking* 
Sir #{name}: Who art thou and what dost thou want.
#{king}: I am #{king} and I want to know if thou'll accept my proposal and save my daughter.".each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
        } 
        
                loop do
"
*Type yes or no*".each_char { |char| 
                        putc char     
                        $stdout.flush
                        sleep 0.05
                        } 
                    puts " "
                    answer = gets.chomp
                    if answer == "yes"
                        break
                    elsif answer == "no"
                        "Sir #{name}: Sorry I'm not in the mood *stumbles over* wherefore don't thou go just ask my wizard friend #{name2} the grey or the secret elf #{jake}.
#{king}: What elf? thou art drunk thither art nay such thing as elves. 
But pray I am asking once again for thy help.".each_char { |char| 
                        putc char     
                        $stdout.flush
                        sleep 0.05
                        } 
                    else
                        "#{king}: I don't speak this language I need a yes or no answer.".each_char { |char| 
                        putc char     
                        $stdout.flush
                        sleep 0.05
                        }
                    end
                end
            system "clear"
            "#{king}: Thank thou so much.
*You leave going north for your journey*
*You run into a fork in the road and read a sign which says*
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
