# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza") 
# steps: 
  # separate string into items
  # make each item a key
  # set default quantity
  # print the list to the console [can you use one of your other methods here? come back and use last method here]
# output: hash

def create_list(list_string)
	list = {}
	list_array = list_string.split(' ')
	list_array.each { |item| list[item] = 1 }
	return list
#	p pretty_list(list)
end

example_list = create_list('carrots apples pizza milk')
new_list = create_list('lemonade tomatoes onions icecream')
#p new_list



# Method to add an item to a list
# input: item name and optional quantity
# steps: 
	# add key value pair to hash
		# add item quantity pair to list
# output: updated hash with new item

def add_item(list, item, quantity=1)
	list[item] = quantity
#	p list
end

add_item(example_list, 'berries', 4)

# Method to remove an item from the list
# input: item name to be removed
# steps: 
	# use nested data structures to access item to be removed
	# remove item from list
# output: updated hash without deleted item

def remove_item(list, item)
	list.delete(item)
	return list
end

# Method to update the quantity of an item
# input: item and number of items added pair
# steps:
	# use nested data structures to access the pair and update the quantity
# output: updated hash with new quantity

def update_quantity(list, item, quantity)
	list[item] = quantity
	return list
end


update_quantity(example_list, 'berries', 100)

# Method to print a list and make it look pretty
# input: hash to be printed
# steps:
	# use interpolation to print each pair with a string

# output: print hash in a string with item; quantity

def pretty_list(list)
	list.each { |item, quantity| puts "Item: #{item.capitalize} - Amount: #{quantity}" }
end

#p pretty_list(example_list)

update_quantity(new_list, 'lemonade', 2)
update_quantity(new_list, 'tomatoes', 3)
update_quantity(new_list, 'onions', 1)
update_quantity(new_list, 'icecream', 4)

p new_list
p remove_item(new_list, 'lemonade')
p update_quantity(new_list, 'icecream', 1)
p pretty_list(new_list)


#Lemonade, qty: 2
#Tomatoes, qty: 3
#Onions, qty: 1
#Ice Cream, qty: 4