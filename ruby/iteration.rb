def block_method
	puts "hello world"
	3.times { yield }
end

block_method { puts "printing block"}


surfer_array = ["john john", "dane", "clay", "filipe"]

surfer_attribute_hash = {
	john_john: "heavy barrels",
	dane: "freesurfing",
	clay: "huge laybacks",
	filipe: "flawless rotating airs"
}

puts "Original Data"
p surfer_array
p surfer_attribute_hash


puts "After .each Call"
surfer_array.each do |surfer|
	puts surfer.reverse
end

surfer_attribute_hash.each do |surfer, attribute|
	puts "#{surfer} excels when it comes to #{attribute}"
end

puts "After .map! Call"

surfer_array.map! do |surfer|
	surfer.upcase
end

p surfer_array

new_ary = [4, 1, 341, 4355]

new_hsh = {
	a: 7,
	b: 4,
	c: 3
}

new_ary.delete_if { |item| item < 5 }
new_hsh.delete_if { |key, value| value < 5 }


new_ary = [4, 1, 341, 4355]

new_hsh = {
	a: 7,
	b: 4,
	c: 3
}

new_ary.keep_if { |item| item < 5 }
new_hsh.keep_if { |key, value| value < 5}


new_ary = [4, 1, 341, 4355]

new_hsh = {
	a: 7,
	b: 4,
	c: 3
}

new_ary.select { |item| item > 5}
new_hsh.select { |k, v| v > 5}

new_ary = [4, 1, 341, 4355]

new_hsh = {
	a: 7,
	b: 4,
	c: 3
}

new_ary.drop_while { |n| n < 5}
new_hsh.drop_while { |k , v| k == :a }

# drop_while does not work for on hashes so it acts as the hash is an array and it can only perform on the keys of the array.
