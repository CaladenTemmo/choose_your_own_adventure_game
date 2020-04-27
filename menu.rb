system "clear"
require "tty-prompt"
require "artii"
require_relative"./SPE.rb"
a = Artii::Base.new :font => 'slant'
prompt = TTY::Prompt.new
system "clear"
menu_choice = prompt.select(a.asciify('Saving Princess Emily!')) do |menu|
  menu.choice 'Start Game'
  menu.choice 'Exit'
end
      if 
        menu_choice == "Start Game"
        start_game = SPE.new
        start_game.char_one_method()
         
     end

     
