class Exercise < ActiveRecord::Base
  attr_accessible :cbpm, :intensity, :name, :title, :met

  has_one :item

end
