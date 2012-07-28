class Player
  attr_reader :name, :batting_average, :at_bats, :strikeouts
  attr_reader :hits

  def initialize(name)
    @name = name
    @batting_average = 0
    @at_bats = 0
    @strikeouts = 0
    @hits = 0
  end

  def strikeout
    @strikeouts += 1
    @at_bats += 1
  end
end
