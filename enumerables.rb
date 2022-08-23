require 'pry'

def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  spicy_foods.map do |food|
    food[:name]
end
end

def spiciest_foods(spicy_foods)
  spicy_foods.filter do |food|
    food[:heat_level] > 5
end
end

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    spice_emoji = "🌶" * food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{spice_emoji}"
end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |food|
    food[:cuisine] == cuisine
end
end

def sort_by_heat(spicy_foods)
  spicy_foods.sort do |food1, food2|
    heat1 = food1[:heat_level]
    heat2 = food2[:heat_level]
    if heat1 == heat2
      0
    elsif heat1 < heat2
      -1
    else
      1
    end
  end  
end

def print_spiciest_foods(spicy_foods)
  spicy_foods.find_all do |food|
    food[:heat_level] > 5
  spiciest_food = spicy_foods.filter {|food| food[:heat_level]>5}
  spiciest_food.map do |food| 
    heat = "🌶" * food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat}"
  end
end
end

def average_heat_level(spicy_foods)
  spicy_foods.sum do |food| 
    food[:heat_level] / spicy_foods.size
  end
end
