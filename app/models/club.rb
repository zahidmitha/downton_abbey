class Club < ActiveRecord::Base

  has_and_belongs_to_many :aristocrats
  attr_accessible :name

end