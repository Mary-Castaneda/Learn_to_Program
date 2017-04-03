puts "This program will tell you all the leap years between two years that you enter. Please enter a starting year."
year1 = gets.chomp.to_i
puts "Please enter an ending year."
year2 = gets.chomp.to_i
(year1..year2).each do |year|
    if year%4 == 0
        if year%100 != 0 || year%400 == 0
        puts year
        end
    end
end