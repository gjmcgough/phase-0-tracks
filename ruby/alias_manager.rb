 # Swapping the first and last name.

def name_switch(first_name, last_name)
	swap = last_name + " " + first_name
	swap.split(" ")
end

swapped_name = name_switch('aaa', 'bbb')

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

name_letter = '#{ary[idx][sub_idx]}'
vowels = ['a','e','i','o','u']
idx = 0
while idx < ary.length
	sub_idx = 0
	while sub_idx < ary[idx].length
		v_index = vowels.index(name_letter)
		v_index = v_index.to_i
		new_str = ''
		while v_index < vowels.length
			if v_index == 0
				new_str += name_letter.next
			else
				new_str += ary[idx].gsub(name_letter, vowels.index(name_letter))
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

# then re-merge the names



# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants 
# (everything else besides the vowels) to the next consonant in the alphabet. 
# So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

 # "Felicia Torres" will become "Vussit Gimodoe"