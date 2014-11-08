require 'csv'

namespace :exercise do
  desc 'Loads Exercise data from CSV'
    task :load_exercises => :environment do
      exercise_keys = [:met, :title, :url]
      f = CSV.open("exercises.csv", "r")
      f.drop(1).each do |r|
      h = Hash[exercise_keys.zip r]
      Exercise.create!(h)
    end
  end

  desc 'Loads Items data from CSV'
    task :load_items => :environment do
      item_keys = [:name]
      f = CSV.open("items.csv", "r")
      f.drop(1).each do |r|
      h = Hash[item_keys.zip r]
      Item.create!(h)
    end
  end

  desc 'Loads Foods data from CSV'
    task :load_foods => :environment do
      food_keys = [:name, :calories]
      f = CSV.open("foods.csv", "r")
      f.drop(1).each do |r|
      h = Hash[food_keys.zip r]
      Food.create!(h)
    end
  end  
end
