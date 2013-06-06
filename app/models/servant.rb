class Servant < ActiveRecord::Base
  before_create :first_letter_last_name

  attr_accessible :last_name, :occupation, :age, :nickname
  validates :last_name, :presence => true
  validates :occupation, :inclusion => { :in =>%w(Butler Maid Cook Concubine)}
  validates :age, :numericality => { :greater_than => 16 }
  validates :nickname, :length => { :maximum => 6 }

  def first_letter_last_name
    self.nickname = last_name[0,1]
  end


end