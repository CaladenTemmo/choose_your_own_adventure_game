require_relative"./knight.rb"
require_relative"./wizard.rb"
# require "colorize"

class SPE
   def char_one_method()
      system "clear"
"*Hello welcome to SPE (Saving Princess Emily) what is your name*
".each_char { |char| 
    putc char     
    $stdout.flush
    sleep 0.05
}
name = gets.strip.capitalize.blue

"*Oh and what is the name of your friend*
".each_char { |char| 
   putc char     
   $stdout.flush
   sleep 0.05
}
name2 = gets.strip.capitalize.green
king = "King Andrew".yellow
princess = "Princess Emily".cyan
"Please choose a character
Press 1 for knight
Press 2 for wizard
".each_char { |char| 
    putc char     
    $stdout.flush
    sleep 0.05
      }

      character = gets.chomp.to_i
         if character == 1
            knight = Knight.new
            knight.char_one_method(name, name2, king, princess)
         elsif character == 2
            wizard = Wizard.new
            wizard.char_one_method(name, name2, king, princess)
         else
             puts "*I'm sorry I need a yes or no answer*".each_char { |char| 
                putc char     
                $stdout.flush
                sleep 0.05
                } 
         
         end

         system "clear"
   end
end