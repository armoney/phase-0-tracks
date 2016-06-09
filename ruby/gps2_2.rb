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
grocery_list = {}

def grocery_list_creator(grocery_list, grocery_item_str)
  array_items = grocery_item_str.split(' ')
  array_items.each do |grocery_item|
    grocery_list[grocery_item] = 0
  end
end

#test code
# p grocery_list("blueberries bacon milk eggs")

# Method to add an item to a list
def add_item (grocery_list, grocery_item)
  grocery_list.store(grocery_item, 0)
end

#test code
# hash_list = {"bananas" => "2"}
# p add_item("carrots")


# Method to remove an item from the list

def remove_item(grocery_list, grocery_item)
  grocery_list.delete(grocery_item)
end

# test code
# p remove_item("bananas")


# Method to update the quantity of an item
def update_quantity(grocery_list, grocery_item, new_quantity)
  if grocery_list.has_key?(grocery_item)
    grocery_list[grocery_item] = new_quantity
  else
    puts "Sorry, that's not on the list (check your spelling)."
  end
end
# test code
# p update_quantity("bananas", "0")

# Method to print a list and make it look pretty
def print_list(grocery_list)
  grocery_list.each { |grocery_item, quantity| puts "#{grocery_item} : #{quantity}"}
end

# test code
# hash_list = {"bananas" => "2", "eggs" => "12"}
# p print_list


#Release 3: Test your solution

puts "\n" + "Grocery List".rjust(20) + "\n"
puts "Please type a list of items you would like to purchase:"
answer = gets.chomp
grocery_list_creator(grocery_list, answer)
print_list(grocery_list)

puts "How many of each item would you like to purchase?"
loop do
  puts "Please type the item you'd like to update first: (type 'done' when finished)"
  answer2 = gets.chomp
  puts "How many #{answer2} would you like?"
  answer3 = gets.chomp.to_i
  update_quantity(grocery_list, answer2, answer3)
  print_list(grocery_list)
  break if answer2 == "done"
end

puts "Enter any item you would like to remove. Type 'n' if finished"
loop do
  answer4 = gets.chomp
  remove_item(grocery_list, answer4)
  print_list(grocery_list)
  break if answer4 = "n"
end
puts "Here is a final review of your grocery list:"
print_list(grocery_list)

#Release 5: Reflect

# What did you learn about pseudocode from working on this challenge?

#I learned that pseudocode should only include plain english and not
#references to coding methods

# What are the tradeoffs of using arrays and hashes for this challenge?

#If the user only wanted to make a grocery list without specifying quantity
#or any other piece of information relative to the item, an array would be 
#more simple to use. But using a hash is more appropriate otherwise. 

# What does a method return?

#A method returns what ever you want

# What kind of things can you pass into methods as arguments?

#You can pass any object into a method as an argument

# How can you pass information between methods?

#You just call a method within a second method

# What concepts were solidified in this challenge, and what concepts are still confusing?

#The concept of multiple methods manipulating the same data structure
