#PSEUDOCODING
# Class of basketball player
# Attributes are: height, speed, ball_handling, shooting
# Methods: make a basket, miss a basket, steal the ball

class Basketball_player
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

players = []

loop do

puts "Would you like to create a basketball player?(y/n)"
answer = gets.chomp
break if answer == "n"

puts "How tall is the basketball player? (i.e. 6'7)"
player_height = gets.chomp

puts "How fast is the basketball player?(1-99)"
player_speed = gets.chomp.to_i

puts "How well does the basketball player handle the ball? (1-99)"
player_ball_handling = gets.chomp.to_i

puts "How well does the basketball player shoot the ball? (1-99)"
player_shooting = gets.chomp.to_i

puts "Thank you, now enter the information for the next player:"

players << Basketball_player.new(player_height, player_speed, player_ball_handling, player_shooting)

end

p players





