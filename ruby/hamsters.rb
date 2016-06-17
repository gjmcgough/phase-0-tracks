# ask for the hamsters name
puts "what is hamsters name?"
name = gets.chomp
# ask for the hamsters volume 1-10
puts "what is the hamsters volume?"
volume = gets.to_i
# ask for the fur color
puts "what is the fur color?"
fur = gets.chomp
# ask whether the haster is a good candidate for adoption
puts "would u adopt?"
adopt = gets.chomp
# ask for estimated age but accept nil

puts "estimated age?"
age = gets.chomp
if age == " "
	puts age.nil
end