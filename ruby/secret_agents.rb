def encrypt(str)
	i = 0
	while i < str.length
		p str[i].next
		i += 1
	end
end

def decrypt(str)
	i = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while i < str.length
		alpha_num = alphabet.index(str[i])
		alpha_num -= 1
		puts alphabet[alpha_num]
		i += 1
	end
end