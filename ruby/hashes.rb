#Ask the user for these variables:  name, age, number of children, decor theme, allergies, hobby, distastes.
#each value will be converted to either string, integer, or boolean
#When the user has answered all questions, print the hash
#Ask user to check for any mistakes and enter either "none" or the key name that is incorrect
#if the user enters a key name, ask for a new value and then update the key-value. 

puts "Please enter the information below"

puts "Name"
name_val = gets.chomp

puts "Age"
age_val = gets.to_i



clients = {
	Name: name_val,
	Age: age_val,
}

puts "************************************"
puts "***Please review your information***"
puts "************************************"

clients.each{|key, value| puts "#{key}: #{value}" }

puts "If there are any mistakes, enter a key such as Name or Age."
puts "Or type none if there are no mistakes."
mistakes = gets.chomp

if mistakes == "Name"
	puts "Please reenter Name"
	name_val = gets.chomp
	clients.each{|key, value| puts "#{key}: #{value}" }
elsif mistakes == "Please reenter Age"
	puts "Age"
	age_val = gets.to_i
	clients.each{|key, value| puts "#{key}: #{value}" }
else
	puts "Thank you"
end


	



