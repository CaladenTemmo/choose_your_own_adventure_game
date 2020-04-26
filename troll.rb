require_relative"./princess.rb"

class Troll
    # if character == Knight.new
def char_one_method (name)
intro_string = "*
Sir #{name} has 100 HP
Sea monster has 100 HP
*Press enter to continue*".each_char { |char| 
putc char     
$stdout.flush
sleep 0.05
} 
you = 100
sea_monster = 100
enter = gets
if "/n"
    system "clear"