require_relative"./princess.rb"
require "colorize"


class Sea_Monster
def char_one_method(name, name2, king, princess)
sm = "Sea Monster".red
hpyou = "100 HP".blue
hpsm = "100 HP".red
intro_string = "*Now that you have a rowboat you hed down the river heading towards the castle which you see in the distance.
When out of nowhere a giant object surfaces out of the water and knocks you onto a nearby island and starts to circle the island when you notice its a 
#{sm} and the only way out of this one is to fight*
*#{name} has #{hpyou}!*
*#{sm} has #{hpsm}!*
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
end
 
loop do
    if sea_monster <= 0 && you <= 0
        system "clear"
"
*#{you} died and the #{sm} died. You lose*".each_char { |char| 
            putc char     
            $stdout.flush
            sleep 0.05
            } 
        sleep 3
        break
        elsif sea_monster <= 0 
"
*#{name} wins the battle and head towards the castle*".each_char { |char| 
            putc char     
            $stdout.flush
            sleep 0.05
            } 
            sleep 3
        castle = Princess.new
        castle.char_one_method(name, name2, king, princess)
        break
    elsif you <= 0
        system "clear"
"
*#{you} died*".each_char { |char| 
            putc char     
            $stdout.flush
            sleep 0.05
            } 
        sleep 3
    break
    else
"
*Type any of the options to attack or block*
SL=slash(damage)
B=block(heal)
ST=stab(damage)".each_char { |char| 
putc char     
$stdout.flush
sleep 0.05
} 
puts " "
action = gets.chomp
    if action == "SL"
    sl_damagesm = rand(-25..-10)
    sl_damagesm_c = sl_damagesm.to_s.red
    sea_monster += sl_damagesm
    sl_damageyou = rand(-20..-15)
    sl_damageyou_c = sl_damageyou.to_s.blue
    you += sl_damageyou
    if you <= 0
        you = 0 
    end
        if sea_monster <= 0
            sea_monster = 0
        end
    sea_monster_c = sea_monster.to_s.red
    you_c = you.to_s.blue

    ["*You slashed him in his chest and dealt #{sl_damagesm_c} damage to the #{sm}!
but during your slash he wacks you with his tail and does #{sl_damageyou_c} damage*", 
"*You slashed him in the neck and delt #{sl_damagesm_c} damage to the #{sm}
but during the slash, he headbutts you and does #{sl_damageyou_c} damage*",
"*You got swallowed up and slash his insides and dealt #{sl_damagesm_c} damage to the #{sm}!
but he crushes you a little before he spits you back out and does #{sl_damageyou_c} damage*",
"*You slash him in the face and dealt #{sl_damagesm_c} damage to the #{sm}!
but the #{sm} jumps up and crashes down and the shockwave knocks you back and does #{sl_damageyou_c} damage*"].shuffle.first.each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
       }

"
*#{name} now has #{you_c} HP! The #{sm} has #{sea_monster_c} HP!*".each_char { |char| 
     putc char     
     $stdout.flush
     sleep 0.05
    }
    end


        if action == "ST"
            st_damagesm = rand(-20..-15)
            st_damagesm_c = st_damagesm.to_s.red
            sea_monster += st_damagesm
            st_damageyou = rand(-20..-10)
            st_damageyou_c = st_damageyou.to_s.blue
            you += st_damageyou
            if you <= 0
                you = 0 
            end
                if sea_monster <= 0
                    sea_monster = 0
                end
            you_c = you.to_s.blue
            sea_monster_c = sea_monster.to_s.red

    [*"You stabbed him in his chest and dealt #{st_damagesm_c} damage to the #{sm}!
but during your stab he wacks you with his tail and does #{st_damageyou_c} damage*", 
"*You stabbed him in the neck and delt #{st_damagesm_c} damage to the #{sm}
but during the stab, he headbutts you and does #{st_damageyou_c} damage*",
"*You got swallowed up and stabbed his insides and dealt #{st_damagesm_c} damage to the #{sm}!
but he crushes you a little before he spits you back out and does #{st_damageyou_c} damage*",
"*You stab him in the face and dealt #{st_damagesm_c} damage to the #{sm}!
but the #{sm} jumps up and crashes down and the shockwave knocks you back and does #{st_damageyou_c} damage*"].shuffle.first.each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
       }
"
*#{name} now has #{you_c} HP! The #{sm} has #{sea_monster_c} HP!*".each_char { |char| 
     putc char     
     $stdout.flush
     sleep 0.05
    }
    end
    
    if action == "CH"
        ch_damagesm = -100
        ch_damagesm_c = ch_damagesm.to_s.red
        sea_monster += ch_damagesm
        ch_damageyou = 0
        ch_damageyou_c = ch_damageyou.to_s.blue
        you += ch_damageyou
        if you <= 0
            you = 0 
        end
            if sea_monster <= 0
                sea_monster = 0
            end
        sea_monster_c = sea_monster.to_s.red
        you_c = you.to_s.blue
    
"*CHEAT ACTIVATED*
*You run away then sneak attack him and deal #{ch_damagesm_c} damage to the #{sm}!
and cause he didn't see it coming he deals #{ch_damageyou_c} damage*".each_char { |char| 
            putc char     
            $stdout.flush
            sleep 0.05
           }
    
"
*#{name} now has #{you_c} HP! The #{sm} has #{sea_monster_c} HP!*".each_char { |char| 
         putc char     
         $stdout.flush
         sleep 0.05
        }
        end

        if action == "B"
            b_healsm = rand(0..3)
            b_healsm_c = b_healsm.to_s.red
            sea_monster += b_healsm
            b_healyou = rand(0..5)
            b_healyou_c = b_healyou.to_s.blue
            you += b_healyou
            if you <= 0
                you = 0 
            end
                if sea_monster <= 0
                    sea_monster = 0
                end
            you_c = you.to_s.blue
            sea_monster_c = sea_monster.to_s.red

"*You block and regen #{b_healyou_c} HP!
but during your block the #{sm} rests for a mintue and regens #{b_healsm_c} HP*".each_char { |char| 
            putc char     
            $stdout.flush
            sleep 0.05
           }
"
*#{name} now has #{you_c} HP! The #{sm} has #{sea_monster_c} HP!*".each_char { |char| 
         putc char     
         $stdout.flush
         sleep 0.05
         } 
         
         
         
        end
end
end
end
end










