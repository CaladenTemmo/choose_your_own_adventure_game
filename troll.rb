require_relative"./princess.rb"
require "colorize"

class Troll
    # if character == Knight.new
def char_one_method(name, name2, king, princess)
t = "Troll".red
intro_string = "*Now that you have a row boat you hed down the river heading towards the castle which you see in the distance.
When out of nowhere a giant object surfeses out of the water and knocks you onto a nearbye island and starts to circle the island when you notice its a 
#{t} and the only way out of this one is to fight.
Sir #{name} has 100 HP
#{t} has 100 HP
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
 
loop do
    "Type any of the options to attack or block
SL=slash(damage)
B=block(heal)
ST=stab(damage)".each_char { |char| 
putc char     
$stdout.flush
sleep 0.05
} 
      action = gets.chomp
if you <= 0 && sea_monster <= 0

    putc "*You both die! Game over.*".each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
        } 
        break
        elsif you <= 0 

       putc "*Sir #{name} has died! Game over.*".each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
        } 
        break
        elsif sea_monster <= 0 
        
        putc "*The #{sm} is dead now you get back onto the row boat and head down towards the castle in the distance*".each_char { |char| 
            putc char     
            $stdout.flush
            sleep 0.05
            } 
                princess = Princess.new
                princess.char_one_method (name)
                system "clear"
                break
        end 



    if action == "SL"
    sl_damagesm = rand(-25..-10) 
    sea_monster += sl_damagesm
    sl_damageyou = rand(-20..-15)
    you += sl_damageyou
    ["You slashed him in his chest and dealt #{sl_damagesm} damage to the #{sm}!
        but during your slash he wacks you with his tail and does #{sl_damageyou} of damage", 
        "You slashed him in the neck and delt .set. damage to the #{sm}
        but during the slash he headbuts you and does .set. damage",
        "You got swallowed up and slash his insides and dealt .set. damage to the #{sm}!
        but he crushes you a little before he spits you back out and does .set. of damage",
    "You slash the him in the face and dealt .set. damage to the #{sm}!
    but the #{sm} jumps up and crashes down and the shockwave knocks you back and does .set. of damage"].shuffle.first.each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
       }
"Sir #{name} now has #{you} HP! The #{sm} has #{sea_monster} HP!".each_char { |char| 
     putc char     
     $stdout.flush
     sleep 0.05
    }
    end
    if action == "ST"
        sea_monster += rand(-20..-15) 
        you += rand(-20..-10)
    ["You stabbed him in his chest and dealt .set. damage to the #{sm}!
        but during your stab he wacks you with his tail and does .set. of damage", 
        "You stabbed him in the neck and delt .set. damage to the #{sm}
        but during the stab he headbuts you and does .set. damage",
        "You got swallowed up and stabbed his insides and dealt .set. damage to the #{sm}!
        but he crushes you a little before he spits you back out and does .set. of damage",
    "You stab the him in the face and dealt .set. damage to the #{sm}!
    but the monster jumps up and crashes down and the shockwave knocks you back and does .set. of damage"].shuffle.first.each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
       }
"Sir #{name} now has #{you} HP! The #{sm} has #{sea_monster} HP!".each_char { |char| 
     putc char     
     $stdout.flush
     sleep 0.05
    }
    end
    if action == "B"
        sea_monster += rand(0..3) 
        you += rand(0..5)
        "You block and regen .set. HP!
            but during your block the #{sm} rests for a mintue and regens .set. HP".each_char { |char| 
            putc char     
            $stdout.flush
            sleep 0.05
           }
    "Sir #{name} now has #{you} HP! The #{sm} has #{sea_monster} HP!".each_char { |char| 
         putc char     
         $stdout.flush
         sleep 0.05
         }   
        end
end
end
end
end
# end
# if Wizard
#     puts "test"
# end





