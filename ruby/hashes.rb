# interface asking user for info 
# clients name, age, number of children, decor theme, yard prefernce, basement
# convert input to appropriate format

puts "What is the client's name?"
name = gets.chomp

puts "What is the client's age?"
age = gets.to_i

puts "Number of children?"
children = gets.to_i

puts "Decor theme preference?"
decor = gets.chomp

puts "Yard size?"
yard = gets.chomp

puts "Basement? (y/n)"
basement = gets.chomp

# when all questions answered print result to screen

client = {
	name: name,
	age: age,
	children: children,
	decor: decor,
	yard: yard,
	basement: basement
}

p client



# give user opporunity to update a key so that if they type in a new keyname it will replace an old one of users choice

# print latest version of the hash