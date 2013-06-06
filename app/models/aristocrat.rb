class Aristocrat < ActiveRecord::Base

  attr_accessible :first_name, :surname, :email
  validates :first_name, :surname, :presence => true
  # validates :surname, :length => {:minimum => 10}, :format => {:with => /^[a=zA - Z']+-[a-zA-Z']+$/}

  validates :email, :format => /@/
  has_many :servants
  has_and_belongs_to_many :clubs

  # def initialize(first_name, surname, email)
  #   @first_name = first_name
  #   @surname = surname
  #   @email = email

  # end

  def secret_societies
    self.joins(:clubs).where("clubs.name = 'Illuminati' OR clubs.name = 'Freemasons'")

  end

  def servants_over(chosen_age)
    Servant.where("age > ?",chosen_age).count
  end


end