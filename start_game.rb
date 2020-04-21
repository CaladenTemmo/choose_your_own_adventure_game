class Start_game

"*You wake up on the cobble road infront of a bar with little memory as a man approches you* Hello noble knight what is thy name".each_char { |char| 
    putc char     
    $stdout.flush
    sleep 0.10
}

     name = gets.strip.capitalize
    "Hello Sir #{name} *the man hands you scroll which says* hello dost thou accept the quest to save my daughter the princess".each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.10
}
end

