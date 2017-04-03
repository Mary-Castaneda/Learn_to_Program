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
            return num_string
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
  num_string  
end

puts english_number 3079
puts english_number 100
puts english_number 374
puts english_number 205
puts english_number 470
puts english_number 78
puts english_number 9
puts english_number 32279
puts english_number 543279
puts english_number 16
puts english_number 5617