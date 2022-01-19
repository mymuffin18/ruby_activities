# Write a while loop that takes input from the user, performs an action,
# and only stops when the user types "STOP". Each loop can get info from the user.

puts "This will stop ONLY if you input 'STOP'"
input = gets.chomp
while input != "STOP"
    input = gets.chomp
end
