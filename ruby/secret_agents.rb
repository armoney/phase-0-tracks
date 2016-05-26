def encrypt(str)
	i = 0
	new_str = ""
	while i < str.length
		new_str = new_str + str[i].next
		i += 1
	end
	p new_str
end

# def encrypt(str)
# 	i = 0
# 	while i < str.length
# 		p str[i].next
# 		i += 1
# 	end
# end

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

decrypt(encrypt("swordfish"))
#it works because encrypt advances the letters forward
#and decrypt reverses it back to the original string. 
#This code works because the output of encrypt is a string
#there for it works as an argument for decrypt