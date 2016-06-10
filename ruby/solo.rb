#PSEUDOCODING
# Class of basketball player
# Attributes are: height, speed, ball_handling, shooting
# Methods: make a basket, miss a basket, steal the ball

class basketball_player
	attr_accessor :height, :speed, :ball_handling, :shooting
	def initialize(height, speed, ball_handling, shooting)
		@height = height
		@speed = speed
		@ball_handling = ball_handling
		@shooting = shooting
	end

	def make_basket(points_int)
		"Yea, #{points_int} points!"
	end

	def miss_basket
		"Awe man..."
	end

	def steal_ball
		"Haha!"
	end
end