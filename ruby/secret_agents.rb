# define method encrypt
# create loop for string length
# advance letters with += and index


def encrypt(string)
	index = 0
	while index < string.length
		if string[index].next.include? "aa"
			puts string[index].next.gsub("aa" , "a")
		else
			puts string[index].next
		end
		index += 1
	end
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
	num = 0
	while num < str.length
		dec = ("abcdefghijklmnopqrstuvwxyz".index("#{str}")) - 1
		puts "abcdefghijklmnopqrstuvwxyz"[dec]
		num += 1
	end
end

decrypt("b")
decrypt("c")
decrypt("d")
decrypt("a")
decrypt("f")
decrypt("e")

# abc
# zed