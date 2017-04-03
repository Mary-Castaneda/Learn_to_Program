puts "Please enter as many words as you please, and when you finish, press enter without typing a word."
words_array = []
number = 0
while true
    input = gets.chomp
    if input == ""
        break
    else words_array.push input
    end
end

puts words_array.sort