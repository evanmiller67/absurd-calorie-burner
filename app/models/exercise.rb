class Exercise < ActiveRecord::Base
  attr_accessible :cbpm, :intensity, :name, :title, :met, :url

  has_one :item

end
