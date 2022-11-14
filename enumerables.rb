require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)

  # select names
  spicy_foods.map do |food|
    food[:name]
  end

end

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)

  # use select to select hot foods
  spicy_foods.select do |food|
    food[:heat_level] > 5
  end
end

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)

  # puts to the terminal every format in the specified format
  spicy_foods.map do |food|
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{"🌶" * food[:heat_level]}"
  end
end

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)

  # find 1 food matching the cuisine passed
  spicy_foods.find { |food| food[:cuisine] == cuisine}
end

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  # sort foods by heat level ascending
  spicy_foods.sort_by { |food| food[:heat_level]}
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)

  # puts only foods with heat level > 5
  spicy_foods.select { |food| food[:heat_level] > 5}.map do |hot_food|
    puts "#{hot_food[:name]} (#{hot_food[:cuisine]}) | Heat Level: #{"🌶" * hot_food[:heat_level]}"
  end

end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)

  # find average heat level
  spicy_foods.sum { |food| food[:heat_level]} / spicy_foods.size
end


#test code
#binding.pry