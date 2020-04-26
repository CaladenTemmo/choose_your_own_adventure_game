require_relative"./knight.rb"
require_relative"./wizard.rb"
require 'colorize'


system "clear"
"Hello welcome to SPE what is your name
 ".each_char { |char| 
    putc char     
    $stdout.flush
    sleep 0.05
}
name = gets.strip.capitalize.blue

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
            knight.char_one_method (name)
         elsif character == 2
            wizard = Wizard.new
            wizard.char_one_method (name)
         else
             puts "Im sorry i need a yes or no answer".each_char { |char| 
                putc char     
                $stdout.flush
                sleep 0.05
                } 
         
         end

         system "clear"
    