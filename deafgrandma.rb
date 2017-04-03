while true
    puts "Hey there, grandson! What're you up to these days?"
    input = gets.chomp
    if input == "BYE"
        puts "Well, isn't that nice. Can you tell me again what you're doin'?"
        input2 = gets.chomp
        if input2 == "BYE"
            puts "Well, I think that's just great. I wanted to know what you're up to, though."
            input3 = gets.chomp
            if input3 == "BYE"
                puts "Alright then, bye-bye now."
                break
            else
            end
        else
        end
    elsif input == input.upcase
        puts "NO, NOT SINCE " + rand(1930..1951).to_s + "!"
    else puts "HUH?! SPEAK UP, SONNY!"
    end
end