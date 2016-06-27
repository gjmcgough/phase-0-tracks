# write code that accepts 3 values, 2 ints and 1 '+'


def calculator(input)
	input = input.split(' ')
	a = input[0].to_i
	b = input[1]
	c = input[2].to_i
	return a.send(b, c)
end



#p calculator(4, '+', 5)
#p calculator(4, '-', 5)
#p calculator(4, '*', 5)
#p calculator(4, '/', 5)

result_hsh = Hash.new{'result hash'}

counter = 0
loop = false
until loop


puts 'Please enter calculation'
input = gets.chomp

result_hsh[input] =  calculator(input)

puts calculator(input)


puts 'If you would like to exit please type "done" otherwise hit "enter" to start a new calculation.'
exit = gets.chomp
counter += 1

	if exit == 'done'
		puts counter.to_s + ' ' + 'calculations done'
		puts result_hsh
		loop = true
	end
end