class Aristocrat < ActiveRecord::Base

  attr_accessor :first_name, :surname, :email
  validates:first_name, :surname, :presence => true
  validates :first_name, :surname, :length => {:minimum => 10, :message => "Piss off, pleb."}, :format => {:with => /^[a=zA - Z']+-[a-zA-Z']+$/}
  validates :email, :format => /@/
  has_many :servants, :clubs

  #def secret_societies

  # end

  def servants_over(age)
    servants
  end


end