class Club
  attr_reader :name

  def initialize(name)
    @name = name
  end
  belongs_to :aristocrats

end