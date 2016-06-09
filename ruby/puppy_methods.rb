class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(int)
    "Woof" * int
  end
  
  def roll_over()
   "Rolls over"
  end
  
  def dog_years(yrs)
    age = yrs * 7
    age  
  end  
  
  def feed(food)
    "I ate #{food}"
  end  
  
  def initialize
   p "Initializing new puppy instance ..."
  end  
end




##Driver code
#initialize
husky = Puppy.new


p husky.fetch("ball")
p husky.speak(5)
p husky.roll_over()
p husky.dog_years(5)
p husky.feed("shoe")




class Cat
  
  def speak(int)
    "MEOOOW" * int
  end
  
  def feed(food)
    "I hate this #{food}"
  end
  
  def initialize()
    "Intializing string"
  end  
   
end

persian = Cat.new

p persian.speak(5)
p persian.feed("meat")

count = 0
arr = []
while count < 51
  
  cat = "cat #{count}"
  cat = Cat.new
  arr << cat
  
 count += 1
end
p arr

arr.each do |cat|
  p cat.feed("catfood")
  p cat.speak(1)
end  
