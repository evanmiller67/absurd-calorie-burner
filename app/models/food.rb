class Food < ActiveRecord::Base
  attr_accessible :name, :calories

  def self.equivalent_to(calorie_count)
    arr = []
    random_selection = find(:all).sample(5)
    random_selection.each do |food|
      arr << {quantity: (calorie_count.to_f / food.calories.to_f).round(2), name: food.name}
    end
    arr
  end
end