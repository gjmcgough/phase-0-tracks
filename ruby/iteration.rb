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