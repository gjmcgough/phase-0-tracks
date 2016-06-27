# write code that accepts 3 values, 2 ints and 1 '+'

def calculator(input)
	input.split('')
	a = input[0].to_i
	b = input[1]
	c = input[2].to_i
	a.send(b, c)
end

#p calculator(4, '+', 5)
#p calculator(4, '-', 5)
#p calculator(4, '*', 5)
#p calculator(4, '/', 5)

puts 'Please enter calculation'
input = gets.chomp


p calculator(input)