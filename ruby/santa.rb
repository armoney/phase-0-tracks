class Santa
	#attr_reader :gender, :ethnicity, :reindeer_ranking, :age
	attr_accessor :gender, :ethnicity, :reindeer_ranking, :age


	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!"
	end
	
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at=(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.push(reindeer_name)
	end

	def new_gender=(new_gender)
		@gender = new_gender
		@gender
	end

	# def gender
	# 	@gender
	# end

	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# def reindeer_ranking
	# 	@reindeer_ranking
	# end
end

santas = []

#Instance
# new_santa = Santa.new

#DRIVER CODE Release 1
# new_santa.speak
# new_santa.eat_milk_and_cookies("chocolate chip cookie")

#Driver code: diverse initializations Release 2

# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

#Driver code: diverse initializations using arrays and loop
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

#Driver code: diverse initializations using hash and loop
# example_genders_ethnicities = example_genders.zip(example_ethnicities).to_h
# example_genders_ethnicities.each do |gender, ethnicity|
# 	santas << Santa.new(gender, ethnicity)
# end

#MORE DRIVER CODE for Release 3
new_santa = Santa.new("agender", "black")
p new_santa.gender
p new_santa.ethnicity
new_santa.celebrate_birthday
p new_santa.age

new_santa.get_mad_at = "Vixen"
p new_santa.reindeer_ranking

p new_santa.new_gender = "bigender"


