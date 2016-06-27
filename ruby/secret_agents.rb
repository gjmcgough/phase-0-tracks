# create interface, ask whether encrypt or decrypt password and loops until valid data
loop = false
until loop

puts "Would you like to encrypt or decrypt a password?"
choice = gets.chomp
	if choice == "encrypt" || choice == "decrypt"
		loop = true
	else
		puts "I don't understand"
	end
end

# asks for password
puts "Enter password:"
password = gets.chomp

# define method encrypt
# create loop for string length
# advance letters with += and index
# create new string to add on results to
# substitute a for aa
def encrypt(string)
    idx = 0
    new_str = ""
    while idx < string.length
        if string[idx].next.include? "aa"
            new_str += string[idx].next.gsub("aa" , "a")
        else
             new_str += string[idx].next
        end
        idx += 1
    end
    return new_str
end

# encrypt("abc")
# should return "bcd"
# encrypt("zed")
# should return "afe"


# define a decrypt method
# create loop for string length
# create string ab..yz and set each index to index - 1
# single out each index
# add the letter before it to a new string
# return the new string after loop complete
def decrypt(str)
	alpha = "abcdefghijklmnopqrstuvwxyz"
    idx = 0
    new_str = ""
    while idx < str.length
        dec = (alpha.index(str[idx])) - 1
        new_str += alpha[dec]
        idx += 1
    end
    return new_str
end

# decrypt("bcd")
# abc
# decrypt ("afe")
# zed

# conducts operation, prints results, exits
if choice == "encrypt"
	p encrypt(password)
elsif choice == "decrypt"
	p decrypt(password)
else 
	p nil
end
	
encrypt(decrypt("swordfish"))

