puts "Hi secret agent, would you like to decrypt or encrypt your password?"
answer = gets.chomp

puts "What is the password?"
password = gets.chomp

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
	new_str = ""
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while i < str.length
		alpha_num = alphabet.index(str[i])
		alpha_num -= 1
		new_str = new_str + alphabet[alpha_num]
		i += 1
	end
	p new_str
end

if answer == "encrypt"
	p encrypt(password)
elsif answer == "decrypt"
	p decrypt(password)
else 
	p "Sorry answer can only be encrypt or decrypt"
end

#decrypt(encrypt("swordfish"))
#it works because encrypt advances the letters forward
#and decrypt reverses it back to the original string. 
#This code works because the output of encrypt is a string
#there for it works as an argument for decrypt