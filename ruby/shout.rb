# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!!!" + ":)"
#   end
# end

# #DRIVER CODE
# puts Shout.yell_angrily("what")
# puts Shout.yelling_happily("what")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yell_happily(words)
		words + "!!!" + " :)"
	end
end

class Boss
	include Shout
end

class Coach
	include Shout
end

#DRIVER CODE
boss = Boss.new
puts boss.yell_angrily("You're fired")

coach = Coach.new
puts coach.yell_happily("Great job")