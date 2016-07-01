# module Shout

# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		words + "!!!" + " :D"
# 	end

# end

# p Shout.yell_angrily('hey asshole')
# p Shout.yell_happily('i won the lotto')

module Shout
	def yell_angrily(words)
		puts "*takes mic from Taylor Swift* " + words + "!!!"
	end

	def yell_happily(words)
		puts words + "!!!" + " :D"
	end
end

class Kanye
	include Shout
end

class Richard_Simmons
	include Shout
end

kanye = Kanye.new
richard = Richard_Simmons.new

kanye.yell_angrily("Beyonce deserves this award")
kanye.yell_happily("I'm a  gay fish")

richard.yell_angrily("I think I woke up as Kanye")
richard.yell_happily("Hey everybody come dance with me and let's party off the pounds")