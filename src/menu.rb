system "clear"
require "tty-prompt"
require "artii"
require_relative"./SPE.rb"
require "colorize"
a = Artii::Base.new :font => 'slant'
prompt = TTY::Prompt.new
system "clear"
menu_choice = prompt.select(a.asciify('Saving Princess Emily')) do |menu|
  menu.choice 'Start New Game'
  menu.choice 'Cheats'
  menu.choice 'Exit'
end
      if 
        menu_choice == "Start New Game"
        start_game = SPE.new
        start_game.char_one_method()
         
     end
     if 
      menu_choice == "Cheats"
"No cheats yet, the game will exit in 3 seconds
".each_char { |char| 
  putc char     
  $stdout.flush
  sleep 0.05
}
sleep 3
end

