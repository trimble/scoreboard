require 'test/unit'
require 'player'

class TestPlayer < Test::Unit::TestCase
  def setup
    @player = Player.new("John Smith")
  end

  def test_initialize_with_name
    assert_equal("John Smith", @player.name)
    @player = Player.new("Todd")
    assert_equal("Todd", @player.name)
  end

  def test_batting_average_initialized_to_zero
    assert_equal(0, @player.batting_average)
  end
end
