#Ask the user for these variables:  name, age, number of children, decor theme, allergies, hobby, distastes.
#each value will be converted to either string, integer, or boolean
#When the user has answered all questions, print the hash
#Ask user to check for any mistakes and enter either "none" or the key name that is incorrect
#if the user enters a key name, ask for a new value and then update the key-value. 

puts "***Please enter the information below***"

puts "Name"
name_val = gets.chomp

puts "Age"
age_val = gets.to_i

puts "Number of children"
child_val = gets.to_i

puts "Decor theme"
decor_val = get.chomp

clients = {
	Name: name_val,
	Age: age_val,
	Children: child_val,
	Decor: decor_val,
}

puts "************************************"
puts "***Please review your information***"
puts "************************************"

clients.each{|key, value| puts "#{key}: #{value}" }

puts "If there are any mistakes, enter a key such as Name or Decor theme."
puts "Or type none if there are no mistakes."
mistakes = gets.chomp

if mistakes == "Name"
	puts "Please reenter name"
	name_val = gets.chomp
	clients[:Name] = name_val
	clients.each{|key, value| puts "#{key}: #{value}" }
	puts "***Thank you***"
elsif mistakes == "Age"
	puts "Please reenter age"
	age_val = gets.to_i
	clients[:Age] = age_val
	clients.each{|key, value| puts "#{key}: #{value}" }
	puts "***Thank you***"
elsif mistakes == "Number of children"
	puts "Please reenter number of children"
	child_val = gets.to_i
	clients[:Children] = child_val
	clients.each{|key, value| puts "#{key}: #{value}" }
elsif mistakes == "Decor theme"
	puts "Please reenter decor theme"
	decor_val = gets.to_i
	clients[:Decor] = decor_val
	clients.each{|key, value| puts "#{key}: #{value}" }
	puts "***Thank you***"
else
	puts "***Thank you***"
end


	



