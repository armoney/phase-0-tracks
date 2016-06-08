#GPS 2.2 Ruby

#Release 1: Psuedocode

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Ask user for grocery item input
  # Split items inputted into an array
  # Store items with default values in a hash
  # set default quantity to 0
  # return grocery list array nicely
  # print the list to the console [can you use one of your other methods here?]
# output: a grocery list hash

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # Prompt for user to add an item to list and quantity
  # Add item and quantity to hash
  # call print list method
# output: updated grocery list hash

# Method to remove an item from the list
# input: item name  
# steps: 
  # Prompt user for item name
  # Remove specified item from grocery list hash
  # call print list method
# output: updated grocery list hash

# Method to update the quantity of an item
# input: integer value
# steps:
  # Ask user for item key
  # Prompt user for new quantity
  # Update new quantity value for given key
  # call print list method
# output: updated grocery list hash

# Method to print a list and make it look pretty
# input: hash
# steps:
  # Block method that shows key-value pairs clearly
# output: pretty hash 

#Release 2: Intial Solution

# Method to create a list

def grocery_list (str)
hash_list = {}
  array_items = str.split(' ')
  array_items.each do |item|
    hash_list[item] = 0
  end
  return hash_list
end

#test code
# p grocery_list("blueberries bacon milk eggs")

# Method to add an item to a list
def add_item (str)
  hash_list = {}
  hash_list.store(str, 0)
  return hash_list
end

#test code
# hash_list = {"bananas" => "2"}
# p add_item("carrots")


# Method to remove an item from the list

def remove_item(str)
  hash_list = {}
  hash_list.delete(str)
  hash_list
end

# test code
# p remove_item("bananas")


# Method to update the quantity of an item
def update_quantity(str_key, str_value)
  hash_list = {}
  if hash_list.has_key?(str_key)
    hash_list[str_key] = str_value
  else
    puts "Invalid key."
  end
  hash_list
end
# test code
# p update_quantity("bananas", "0")

# Method to print a list and make it look pretty
def print_list
  hash_list.each { |grocery_item, quantity| puts "#{grocery_item} : #{quantity}"}
end

# test code
# hash_list = {"bananas" => "2", "eggs" => "12"}
# p print_list


#Release 3: Test your solution

puts "\n" + "Grocery List".rjust(20) + "\n"
puts "Please type a list of items you would like to purchase:"
answer = gets.chomp
p grocery_list(answer)
puts "How many of each item would you like to purchase? Please type the item you'd like to update first:"
answer2 = gets.chomp
puts "How many #{answer2} would you like?"
answer3 = gets.chomp
p update_quantity(answer2, answer3)
puts "Is there any item you'd like to remove? (y/n)"
answer4 = gets.chomp
  if answer4 == "y"
    puts "Okay. Please type the item you'd like to remove:"
    answer5 = gets.chomp
    p remove_item(answer5)
  end
puts "Here is a final review of your grocery list:"
p print_list
