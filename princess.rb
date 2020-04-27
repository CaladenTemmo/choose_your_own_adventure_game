class Princess
    def char_one_method(name, name2, king, princess)
        "*you finally make it to the castle, kill the dragon and break down the locked door to save #{princess}*
        #{princess}: Thank thou so much for saving me, *You take her back to #{king} and he also thanks you and gives you 100 shilling".each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
       }
        ["*Thank you for playing you win press enter to end the game*", "*Thank you for playing you win nothing and cant get the time you wasted playing this game back please press enter to end the game*"].shuffle.first.each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
       }
enter = gets
if "/n"
    system "clear"
    end
end
end