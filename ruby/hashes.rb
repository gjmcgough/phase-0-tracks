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
wants_basement = basement == "y"

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

puts "Please enter the key you would like to update, otherwise enter 'done'."
key_names = gets.chomp

if key_names.downcase == "done"
	client
elsif key_names == "name"
	puts "What do you want new key to be?"
	new_name = gets.chomp
	client[new_name.to_sym] = client.delete :name
elsif key_names == "age"
	puts "What do you want new key to be?"
	new_name = gets.chomp
	client[new_name.to_sym] = client.delete :age
elsif key_names == "children"
	puts "What do you want new key to be?"
	new_name = gets.chomp
	client[new_name.to_sym] = client.delete :children
elsif key_names == "decor"
	puts "What do you want new key to be?"
	new_name = gets.chomp
	client[new_name.to_sym] = client.delete :decor
elsif key_names == "yard"
	puts "What do you want new key to be?"
	new_name = gets.chomp
	client[new_name.to_sym] = client.delete :yard
elsif key_names == "basement"
	puts "What do you want new key to be?"
	new_name = gets.chomp
	client[new_name.to_sym] = client.delete :basement
end
	
# print latest version of the hash

p client