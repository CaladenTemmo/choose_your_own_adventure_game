require_relative"./docks.rb"

class Wizard
    def char_one_method(name, name2, king, princess)
        system "clear"
        intro_string = "*You are in your tower practacing spells from your spell book
        Then there is a sudden knock on the door *Knock* *Knock* *Knock*
        you open the door to see #{king}
        #{name} the grey: Hello there your majasty what can i do for you
        #{king}: i am in need of thy help. My daughter hath been taken and i wouldst like thou to get her back for me".each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
}
loop do
    "*Type yes or no*".each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
        } 
    answer = gets.chomp
    if answer == "yes"
        break
    elsif answer == "no"
        "#{name} the grey: Sorry I am busy right now but you can ask my friend the famous knight #{name2} who spends a lot of time at the bar.
        #{king}: Pray i am asking once again for thy help".each_char { |char| 
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
    "#{king}: Thank thou so much *you leave going north for your jorney.
        *You run into a fork in the road and read a sign which reads*
        *Go left towards the docks. Go right towards the bridge*
        *Type left or right*
        ".each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
        } 
        road = gets.chomp
                    if road == "left"
                        docks = Docks.new
                        docks.char_one_method (name)
                    elsif road == "right"
                        bridge = Bridge.new
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







