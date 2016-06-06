def spy_name(real_name)
	i = 0
	vowels = "aeiou"
	split_real_name = real_name.split(' ')
	reverse_split_real_name = split_real_name.reverse
	last_first_name = reverse_split_real_name.join(' ')
	last_first_name.downcase!
	#last_first_name.split('')

	until i > last_first_name.length
		if last_first_name[i] == "a"
			last_first_name.tr!("a","e")
		elsif last_first_name[i] == "e"
			last_first_name.tr!("e","i")
		elsif last_first_name[i] == "i"
			last_first_name.tr!("i","o")
		elsif last_first_name[i] == "o"
			last_first_name.tr!("o","u")
		elsif last_first_name[i] == "u"
			last_first_name.tr!("u","a")
		else 
		end
		i += 1 
	end
p last_first_name
end

spy_name("jimmy seto")


