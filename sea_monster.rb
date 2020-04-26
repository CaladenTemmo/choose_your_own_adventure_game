require_relative"./princess.rb"

class Sea_Monster
def char_one_method (name)
"*Now that you have a row boat you hed down the river heading towards the castle which you see in the distance.
When out of nowhere a giant object surfeses out of the water and knocks you onto a nearbye island and starts to circle the island when you notice its a 
sea monster and the only way out of this one is to fight.
#{name} has 100 HP
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


loop do
    "Type any to attack or block
SL=slash
B=block
ST=stab".each_char { |char| 
putc char     
$stdout.flush
sleep 0.05
} 
      action = gets.chomp

      if you <= 0 

       putc "You have died! Game over.".each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
        } 
break
        elsif sea_monster <= 0 
        
        putc "*The sea monster is dead now you get back onto the row boat and head down towards the castle in the distance".each_char { |char| 
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

    sea_monster += rand(-18..-10) 
    you += rand(-15..-10)
    ["You slashed him in his chest and dealt .set. damage to the sea monster!
        but during your slash he wacks you with his tail and does .set. of damage", 
        "You slashed him in the neck and delt .set. damage to the sea monster
        but during the slash he headbuts you and does .set. damage",
        "You got swallowed and slash his insides and dealt .set. damage to the sea monster!
        but he crushes you a little before he spits you back out and does .set. of damage",
    "You slash the him in the face and dealt .set. damage to the sea monster!
    but the monster jumps up and crashes down and the shockwave knocks you back and does .set. of damage"].shuffle.first.each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
       }
"You now have #{you} HP! The sea monster has #{sea_monster} HP!".each_char { |char| 
     putc char     
     $stdout.flush
     sleep 0.05
    }
    end
    if action == "ST"
    sea_monster += rand(-25..-10) 
    you += rand(-20..-10)
    ["You stabbed him in his chest and dealt .set. damage to the sea monster!
        but during your stab he wacks you with his tail and does .set. of damage", 
        "You stabbed him in the neck and delt .set. damage to the sea monster
        but during the stab he headbuts you and does .set. damage",
        "You got swallowed and stabbed his insides and dealt .set. damage to the sea monster!
        but he crushes you a little before he spits you back out and does .set. of damage",
    "You stab the him in the face and dealt .set. damage to the sea monster!
    but the monster jumps up and crashes down and the shockwave knocks you back and does .set. of damage"].shuffle.first.each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
       }
"You now have #{you} HP! The sea monster has #{sea_monster} HP!".each_char { |char| 
     putc char     
     $stdout.flush
     sleep 0.05
    }
    end
    if action == "B"
        sea_monster += rand(0..3) 
        you += rand(0..5)
        "You block and regen .set. HP!
            but during your block he rests for a mintue and regens .set. HP".each_char { |char| 
            putc char     
            $stdout.flush
            sleep 0.05
           }
    "You now have #{you} HP! The sea monster has #{sea_monster} HP!".each_char { |char| 
         putc char     
         $stdout.flush
         sleep 0.05
         }   
        end
end
end
end
end








