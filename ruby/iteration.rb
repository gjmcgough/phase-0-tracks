def block_method
	puts "hello world"
	3.times { yield }
end

block_method { |i| puts "printing block #{i}"}
