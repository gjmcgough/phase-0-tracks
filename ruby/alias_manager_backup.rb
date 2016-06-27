<<<<<<< HEAD
# create user interface asking user for name so a new alias can be created and loop it until user types 'quit'

quit = false
until quit

puts 'What is the first name you would like an alias for?'
first_name_alias = gets.chomp

puts 'What is the last name you would like an alias for?'
last_name_alias = gets.chomp

=======
>>>>>>> rawr
 # Swapping the first and last name.

def name_switch(first_name, last_name)
	swap = last_name + " " + first_name

end

<<<<<<< HEAD
swapped_name = name_switch(first_name_alias, last_name_alias)

# Split name into array and advance characters forward once 

def next_letter(full_name)
	idx = 0
	while idx < full_name.length
		name = full_name.split('')
		name.map! { |letter| letter.next }
		idx += 1
	end
	name
end

next_letter(swapped_name)

# Join name back together and replace necessary characters with spaces

def join_name(name)
	new_alias = name.join('')
	if new_alias.include?('!')
		new_alias.gsub!('!', ' ')
	end
	new_alias_ary = new_alias.split(' ')
end

name_alias = join_name(next_letter(swapped_name))

# use data structures to print satement saying old name is new name

names = {
	old_first_name: first_name_alias,
	old_last_name: last_name_alias,
	new_first_name: name_alias[0],
	new_last_name: name_alias[1] 
}

print names[:new_first_name].capitalize, ' ', names[:new_last_name].capitalize, ' is really ', names[:old_first_name].capitalize, ' ', names[:old_last_name].capitalize, '!', '--'

puts 'Type "done" if finished with program.'
finished = gets.chomp.downcase

if finished == 'done'
	quit = true
end
end
#p names
#p name_alias
#p name_alias[0]
=======
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




>>>>>>> rawr
