def roman_to_integer num
    num_array = num.split("")
    num_array.each do |letter|
        letter.gsub!("M", "1000")
        letter.gsub!("D", "500")
        letter.gsub!("C", "100")
        letter.gsub!("L", "50")
        letter.gsub!("X", "10")
        letter.gsub!("V", "5")
        letter.gsub!("I", "1")
    end
    arabic_array = []
    num_array.each do |number|
        arabic_array.push(number.to_i)
    end
    negative_num = []
    positive_num = []
    while arabic_array.length != 1
        this_one = arabic_array[0]
        next_one = arabic_array[1]
        if this_one < next_one
            negative_num.push(arabic_array[0])
            arabic_array.delete_at(0)
        else
            positive_num.push(arabic_array[0])
            arabic_array.delete_at(0)
        end
    end
    if arabic_array.length == 1
        positive_num.push(arabic_array[0])
        arabic_array.delete_at(0)
    end
    def array_to_integer(array)
        integer = 0
        if array.length > 1
            array.each do |n|
                integer += n
            end
        else
            integer = array[0]
        end
        integer
    end
    positive_int = array_to_integer(positive_num)
    negative_int = array_to_integer(negative_num)
    integer = positive_int - negative_int
    puts integer
end

roman_to_integer("CMDC")
roman_to_integer("MCMXCII")
roman_to_integer("MDMCLXXXVII")