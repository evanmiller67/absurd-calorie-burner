require 'csv'

namespace :datafy do
desc 'Loads Exercise data from CSV'
  task :load_data => :environment do
    
    exercise_keys = [:met, :title, :url]
    f = CSV.open("exercises.csv", "r")
    f.drop(1).each do |r|
      h = Hash[exercise_keys.zip r]
      Exercise.create!(h)
    end
    
    item_keys = [:name]
    f = CSV.open("items.csv", "r")
    f.drop(1).each do |r|
      h = Hash[item_keys.zip r]
      Item.create!(h)
    end
    
    food_keys = [:name, :calories]
    f = CSV.open("foods.csv", "r")
    f.drop(1).each do |r|
      h = Hash[food_keys.zip r]
      Food.create!(h)
    end
  end 
end
