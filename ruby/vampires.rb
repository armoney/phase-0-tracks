puts "Hi, how many employees are you processing?"
employees = gets.to_i

i = 0
until i == employees
	puts "Hi, what is your name?"
	name = gets.chomp
	
	puts "How old are you?"
	age = gets.to_i
	
	puts "What year were you born?"
	birth_year = gets.to_i
	
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
	garlic = gets.chomp
	
	puts "Would you like to enroll in the company's health insurance? (yes or no)"
	insurance = gets.chomp

	allergies = ""
	until allergies == "done"
		puts "Please input any allergies that you may have, type done when finished."
		allergies = gets.chomp
			if allergies == "sunshine"
				p "Definitely a vampire"
				break
		break
			else
			end
	end
	
		if allergies == "sunshine"
			break
		elsif age == 2016 - birth_year && (garlic == "yes" || insurance == "yes")
			p "Probably not a vampire."
		elsif name == "Drake Cula" || name == "Tu Fang"
			p "Definitely a vampire."
		elsif age != 2016 - birth_year && (garlic == "no" || insurance == "no")
			p "Probably a vampire."
		elsif age != 2016 - birth_year && (garlic == "no" && insurance == "no")
			p "Almost certainly a vampire."
		else p "Results inconclusive."
		end
	i += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."