class Aristocrat < ActiveRecord::Base

  attr_accessible :first_name, :surname, :email
  validates (:first_name, :surname, :presence => true)
  validates (:first_name, :surname, :length => {:minimum => 10, :message => "Piss off, pleb."}, :format => {:with => /^[a=zA - Z']+-[a-zA-Z']+$/})
  validates (:email, :format => /@/)
  has_many :servants, :clubs

  def get_secret_societies

  end

  def get_servants(age)

  end


end