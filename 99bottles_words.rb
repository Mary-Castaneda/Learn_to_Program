def english_number number
    if number == 0
        return "zero"
    end
    if number < 0
        put "Please enter a number more than 0."
    end
    num_string = ""
    ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    unwritten = number
    writing = unwritten/1000
    #writing = 3
    unwritten = unwritten - writing*1000
    #unwritten = 279
    if writing > 0
        thousands = english_number writing
        if unwritten == 0
        num_string = num_string + thousands + " thousand"
        elsif unwritten > 0
        num_string = num_string + thousands + " thousand, " 
        end
    end
    writing = unwritten/100
    unwritten = unwritten - writing*100
    if writing > 0
        if unwritten == 0
        num_string = num_string + ones_place[writing - 1] + " " + "hundred"
        elsif unwritten > 0
        num_string = num_string + ones_place[writing - 1] + " " + "hundred and "
        end
    end
    if unwritten >= 10
        if unwritten >= 11 and unwritten <= 19
            num_string = num_string + teenagers[unwritten - 11]
            return num_string.capitalize
        end
        writing = unwritten/10
        unwritten = unwritten - writing*10
        if writing > 0
            if unwritten == 0
            num_string = num_string + tens_place[writing - 1]
            elsif unwritten > 0
            num_string = num_string + tens_place[writing - 1] + "-"
            end
        end
    end
    if unwritten > 0 
        if writing > 0
            num_string = num_string + ones_place[unwritten - 1]
        elsif writing == 0
            num_string = num_string + ones_place[unwritten - 1]
        end
    end
    num_string.capitalize
end
a = 9999
while a > 1
puts "#{english_number a} bottles of beer on the wall! #{english_number a} bottles of beer on the wall! You take one down and pass it around! #{english_number a-1} bottles of beer on the wall!"
a = a - 1
end
if a == 1 
    puts "One more bottle of beer on the wall! One more bottle of beer on the wall! You take one down and pass it around! NO MORE BOTTLES OF BEER ON THE WALL!"
end