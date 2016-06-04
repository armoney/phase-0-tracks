
# def say_goodbye
#   puts "See ya later"
#   yield ("Oscar")
# end
# say_goodbye { |name| puts "until next time #{name}!"}

# shopping_list = ["lettuce","onions","beer","burgers"]

# puts "Original array"
# p shopping_list


# puts "***This is a .each block***"
# shopping_list.each do |grocery_item|
#   p grocery_item
# end

# puts "Results of .each block on original array:"
# p shopping_list


# puts "***This is a .map! block output***"
# shopping_list.map! do |grocery_item|
#   puts grocery_item.upcase
#   grocery_item.upcase
# end

# puts "Results of .map! block"
# p shopping_list

# recipe = {
#   "flour" => true,
#   "sugar" => false,
#   "salt" => true,
# }

# p recipe

# recipe.each do |ingredient|
#   puts ingredient
# end

# p recipe

numbers_arr = [1,2,3,4,5,6,7]
puts "This is our original array"
p numbers_arr

puts "This is the array after .delete_if is called"
numbers_arr.delete_if do |num|
	num < 6
end
p numbers_arr

numbers_arr = [1,2,3,4,5,6,7]
puts "This is the array after .keep_if is called"
numbers_arr.keep_if do |num|
	num < 6
end
p numbers_arr

numbers_arr = [1,2,3,4,5,6,7]
puts "This is the NEW array after .select is called"
new_numbers_arr = numbers_arr.select do |num|
	num < 6
end
p new_numbers_arr

numbers_arr = [1,2,3,4,5,6,7]
puts "This is the original array after .reject! is called"
new_numbers_arr = numbers_arr.reject! do |num|
	num < 6
end
p numbers_arr

