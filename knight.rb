class Knight

"*You wake up on the cobble road infront of a bar with little memory staring into the bright sun as a man approches you* Hello noble knight what is thy name
".each_char { |char| 
    putc char     
    $stdout.flush
    sleep 0.10
}
 
     name = gets.strip.capitalize
    "Hello Sir #{name} *the man hands you a scroll which says* hello dost thou accept the quest to save my daughter the princess
    ".each_char { |char| 
        putc char     
        $stdout.flush
        sleep 0.10
}
    "*With the glar from the sun in your eyes you cant see who is speaking* 
#{name}: Who art thou and what dost thou want
King: I am the king and i want to know if thou'll accept my proposal and save my daughter".each_char { |char| 
putc char     
$stdout.flush
sleep 0.10
}
end
