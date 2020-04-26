class Wizard

    def char_one_method (name)
        intro_string "*You are in your tower practacing spells from your spell book
        Then there is a sudden knock on the door *Knock* *Knock* *Knock*
        you open the door to see the king
        #{name}: Hello there your majasty what can i do for you
        King: i am in need of thy help. My daughter hath been taken and i wouldst like thou to get her back for me".each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.05
}
    end
end

