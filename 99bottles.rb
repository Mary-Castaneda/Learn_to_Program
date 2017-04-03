number_of_bottles = 99
while number_of_bottles > 1
    puts "#{number_of_bottles} bottles of beer on the wall! #{number_of_bottles} bottles of beer on the wall! You take one down and pass it around: " + (number_of_bottles.to_i - 1).to_s + " bottles of beer on the wall!"
    number_of_bottles = number_of_bottles.to_i - 1
end
if number_of_bottles = 1
    puts "1 bottle of beer on the wall! 1 bottle of beer on the wall! You take it down and pass it around: no more bottles of beer on the wall!"
end