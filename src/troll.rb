require_relative"./princess.rb"
require "colorize"


class Troll
def char_one_method(name, name2, king, princess)
t = "Troll".red
hpyou = "100 HP".blue
hpt = "100 HP".red
intro_string = "*When your about to get onto the bridge a #{t} jumps out and the only way across the bridge is to fight*
*#{name} has #{hpyou}!*
*#{t} has #{hpt}!*
*Press enter to continue*".each_char { |char| 
putc char     
$stdout.flush
sleep 0.05
} 
you = 100
troll = 100
enter = gets
if "/n"
    system "clear"
end
 
loop do
    if troll <= 0 && you <= 0
        system "clear"
"
*#{you} died and the #{t} died. You lose*".each_char { |char| 
            putc char     
            $stdout.flush
            sleep 0.05
            } 
        sleep 3
        break
        elsif troll <= 0 
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
    sl_damaget = rand(-25..-10)
    sl_damaget_c = sl_damaget.to_s.red
    troll += sl_damaget
    sl_damageyou = rand(-20..-15)
    sl_damageyou_c = sl_damageyou.to_s.blue
    you += sl_damageyou
    if you <= 0
        you = 0 
    end
        if troll <= 0
            troll = 0
        end
    troll_c = troll.to_s.red
    you_c = you.to_s.blue

    [*"You slashed him in his chest and dealt #{sl_damaget_c} damage to the #{t}!
but during your slash he wacks you with his tail and does #{sl_damageyou_c} damage*", 
"*You slashed him in the neck and delt #{sl_damaget_c} damage to the #{t}
but during the slash, he headbutts you and does #{sl_damageyou_c} damage*",
"*You got swallowed up and slash his insides and dealt #{sl_damaget_c} damage to the #{t}!
but he crushes you a little before he spits you back out and does #{sl_damageyou_c} damage*",
"*You slash him in the face and dealt #{sl_damaget_c} damage to the #{t}!
but the #{t} jumps up and crashes down and the shockwave knocks you back and does #{sl_damageyou_c} damage*"].shuffle.first.each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
       }

"
*#{name} now has #{you_c} HP! The #{t} has #{troll_c} HP!*".each_char { |char| 
     putc char     
     $stdout.flush
     sleep 0.05
    }
    end


        if action == "ST"
            st_damaget = rand(-20..-15)
            st_damaget_c = st_damaget.to_s.red
            troll += st_damaget
            st_damageyou = rand(-20..-10)
            st_damageyou_c = st_damageyou.to_s.blue
            you += st_damageyou
            if you <= 0
                you = 0 
            end
                if troll <= 0
                    troll = 0
                end
            you_c = you.to_s.blue
            troll_c = troll.to_s.red

    ["*You stabbed him in his chest and dealt #{st_damaget_c} damage to the #{t}!
but during your stab he wacks you with his tail and does #{st_damageyou_c} damage*", 
"*You stabbed him in the neck and delt #{st_damaget_c} damage to the #{t}
but during the stab, he headbutts you and does #{st_damageyou_c} damage*",
"*You got swallowed up and stabbed his insides and dealt #{st_damaget_c} damage to the #{t}!
but he crushes you a little before he spits you back out and does #{st_damageyou_c} damage*",
"*You stab him in the face and dealt #{st_damaget_c} damage to the #{t}!
but the #{t} jumps up and crashes down and the shockwave knocks you back and does #{st_damageyou_c} damage*"].shuffle.first.each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
       }
"
*#{name} now has #{you_c} HP! The #{t} has #{troll_c} HP!*".each_char { |char| 
     putc char     
     $stdout.flush
     sleep 0.05
    }
    end
    
    if action == "CH"
        ch_damaget = -100
        ch_damaget_c = ch_damaget.to_s.red
        troll += ch_damaget
        ch_damageyou = 0
        ch_damageyou_c = ch_damageyou.to_s.blue
        you += ch_damageyou
        if you <= 0
            you = 0 
        end
            if troll <= 0
                troll = 0
            end
        troll_c = troll.to_s.red
        you_c = you.to_s.blue
    
"*CHEAT ACTIVATED*
*You run away then sneak attack him and deal #{ch_damaget_c} damage to the #{t}!
and cause he didn't see it coming he deals #{ch_damageyou_c} damage*".each_char { |char| 
            putc char     
            $stdout.flush
            sleep 0.05
           }
    
"
*#{name} now has #{you_c} HP! The #{t} has #{troll_c} HP!*".each_char { |char| 
         putc char     
         $stdout.flush
         sleep 0.05
        }
        end

        if action == "B"
            b_healt = rand(0..3)
            b_healt_c = b_healt.to_s.red
            troll += b_healt
            b_healyou = rand(0..5)
            b_healyou_c = b_healyou.to_s.blue
            you += b_healyou
            if you <= 0
                you = 0 
            end
                if troll <= 0
                    troll = 0
                end
            you_c = you.to_s.blue
            troll_c = troll.to_s.red

"*You block and regen #{b_healyou_c} HP!
but during your block the #{t} rests for a mintue and regens #{b_healt_c} HP*".each_char { |char| 
            putc char     
            $stdout.flush
            sleep 0.05
           }
"
*#{name} now has #{you_c} HP! The #{t} has #{troll_c} HP!*".each_char { |char| 
         putc char     
         $stdout.flush
         sleep 0.05
         } 
         
         
         
        end
end
end
end
end



