puts "Hi, what would you like to name this hamster?"
name = gets.chomp

puts "how loud is this hamster out of 1 to 10? 'one being soft' and 'ten being loud'"
volume = gets.to_i

puts "what color is this hamster?"
fur = gets.chomp

puts "is this hamster good for adoption? (yes/no)"
candidate = gets.chomp

age = nil
puts "about how old do you think the hamster is? 'months old'"
age = gets.to_i

puts "The name of the hamster is #{name}.
You perceive his volume to be #{volume}. 
Your hamster fur color is #{fur}. 
Would the hamster be good for a adoption you said '#{candidate}'. 
You thought your hamster is #{age} (months)."