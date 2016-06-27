 # Swapping the first and last name.

def name_switch(first_name, last_name)
	swap = last_name + " " + first_name

end

swapped_name = name_switch('Felicia', 'Torres')

p swapped_name

# loop through each string in the array and turn each string into an array of its own 


idx = 0
ary = []
while idx < swapped_name.length
	ary << swapped_name[idx].split('')
	idx += 1
end

# single out vowels then swap them out 
# single out letters then swap them out and then re-merge the names
# loop thru array of aeiou and add to .include?
# line 40 make a method that declares a variable for the next letter in vowels array

vowels = ['a','e','i','o','u']

idx = 0
while idx < ary.length
	sub_idx = 0
	name_letter = ary[idx][sub_idx]
	while sub_idx < ary[idx].length
		v_index = vowels.index(name_letter)
		v_index = v_index.to_i
		new_str = ''
		vow_checker = vowels[v_index]
		while v_index < ary[idx].length
			advance_index = (vowels.index(vow_checker) + 1)
			next_vowel = vowels[advance_index]
			if swapped_name.include?(vow_checker)
				new_str += swapped_name.gsub(vow_checker, next_vowel)
		#	elsif swapped_name.include?"a"
		#		new_str += swapped_name.gsub("a", "e")
			end
			v_index += 1
		end
		sub_idx += 1
	end
	idx += 1
end
#p vowels[v_index].next
p ary
p new_str




# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants 
# (everything else besides the vowels) to the next consonant in the alphabet. 
# So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

 # "Felicia Torres" will become "Vussit Gimodoe"