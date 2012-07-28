class Player
  attr_reader :name, :batting_average

  def initialize(name)
    @name = name
    @batting_average = 0
  end
end
