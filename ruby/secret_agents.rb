# create interface, ask whether encrypt or decrypt password
# asks for password
# conducts operation, prints results, exits
puts "Would you like to encrypt or decrypt a password?"
choice = gets.chomp

puts "Enter password:"
password = gets.chomp

loop = false
until loop
	if choice == "encrypt"
		p encrypt(password)
		loop = true
	elsif choice == "decrypt"
		p decrypt(password)
		loop = true
	else
		puts "I don't understand"

# define method encrypt
# create loop for string length
# advance letters with += and index


def encrypt(string)
    index = 0
    new_str = ""
    while index < string.length
        if string[index].next.include? "aa"
            new_str += print string[index].next.gsub("aa" , "a")
        else
             new_str += string[index].next
        end
         
        index += 1
    end
    return new_str
end

encrypt("abc")
# should return "bcd"
encrypt("zed")
# should return "afe"


# define a decrypt method
# create loop for string length
# reverse letters
# use logic to single out each letter then print the letter before it
# create string ab..yz and set each index to index - 1
# access each character individually


def decrypt(str)
    idx = 0
    new_str = ""
    while idx < str.length
        dec = ("abcdefghijklmnopqrstuvwxyz".index(str[idx])) - 1
        new_str += "abcdefghijklmnopqrstuvwxyz"[dec]
        idx += 1
    end
    return new_str
end



decrypt("bcd")

# abc
# zed