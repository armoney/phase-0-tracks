#swaps first name and last name, downcases
def spy_name(real_name)
	split_real_name = real_name.split(' ')
	reverse_split_real_name = split_real_name.reverse
	last_first_name = reverse_split_real_name.join(' ')
	last_first_name.downcase!
	return last_first_name
end

#changes vowel to next (aeiou)
def next_vowel(last_first_name)
	i = 0
	until i > last_first_name.length
		if last_first_name[i] == "a"
			last_first_name[i] = "e"
		elsif last_first_name[i] == "e"
			last_first_name[i] = "i"
		elsif last_first_name[i] == "i"
			last_first_name[i] = "o"
		elsif last_first_name[i] == "o"
			last_first_name[i] = "u"
		elsif last_first_name[i] == "u"
			last_first_name[i]= "a"
		else 
		end
		i += 1 
	end
	return last_first_name
end

#changes consonent to next cons in alphabet
def next_cons(last_first_name)
	i = 0
	alphabet = "bcdfghjklmnpqrstvwxyz"
	while i < last_first_name.length
		if last_first_name[i] == "a"
			i += 1
		elsif last_first_name[i] == "e"
			i += 1
		elsif last_first_name[i] == "i"
			i += 1
		elsif last_first_name[i] == "o"
			i += 1
		elsif last_first_name[i] == "u"
			i += 1
		elsif last_first_name[i] == " "
			i += 1
		else
			alpha_num = alphabet.index(last_first_name[i])
			alpha_num += 1
			next_alpha_num = alpha_num
			last_first_name[i] = alphabet[next_alpha_num]
			i += 1
		end
	end
	return last_first_name.split.map(&:capitalize).join(' ')
end


p next_cons(next_vowel(spy_name("Felicia Torres")))
p next_cons(next_vowel(spy_name("Armon Arcuri")))
p next_cons(next_vowel(spy_name("Muhammad Ali")))


