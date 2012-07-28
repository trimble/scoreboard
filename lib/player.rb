class Player
  attr_reader :name, :batting_average, :at_bats

  def initialize(name)
    @name = name
    @batting_average = 0
    @at_bats = 0
  end

end
