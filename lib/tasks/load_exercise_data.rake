require 'csv'

namespace :exercise do
  desc 'Poplulates Exercise data from CSV'
    task :populate => :environment do
      item_keys = [:met, :title, :item]
      f = CSV.open("exercises.csv", "r")
      f.drop(1).each do |r|
      h = Hash[item_keys.zip r]
      Exercise.create!(h)
    end
  end
end
