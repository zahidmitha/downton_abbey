class Servant
  attr_accessible :last_name, :occupation, :age, :nickname
  before_create :first_letter_last_name
  validates :occupation, :inclusion => { :in =>%w(Butler Maid Cook Concubine)}
  validates :age, :numericality => { :greater_than => 16 }
  validates (:nickname, :length => {:maximum => 6, :message "Not brief enough!"})

  def first_letter_last_name
    @nickname = @nickname.
  end


end