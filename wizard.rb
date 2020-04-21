class Wizard

   putc "*You are in your tower reading a book and decide to write your name on the book incase you lose it, what is your name
".each_char { |char| 
    putc char     
    $stdout.flush
    sleep 0.10
   }
   
   
   name = gets.strip.capitalize
    "Then there is a sudden knock on the door *Knock* *Knock* *Knock*
*you open there door to see the king
#{name}: Hello there your majasty what can i do for you
King: i am in need of thy help. My daughter hath been taken and i wouldst like thou to get her back for me".each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.10
    }
end
