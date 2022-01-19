# Write a program that takes a number from the user between 0 and 100
# and reports back whether the number is between 0 and 50, 51 and 100, or above 100


def printRange
    puts "Input a number between 0 and 100"
    input = gets.chomp.to_i
    if input < 0
        puts "Invalid Number"
    elsif input in 0..50
        puts "#{input} is between 0 and 50"
    elsif input in 51..100
        puts "#{input} is between 51 and 100"
    else
        puts "#{input} is above 100"
    end
end

printRange()