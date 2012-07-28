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
    assert_equal(0, @player.batting_average)
    assert_equal(0, @player.at_bats)
    assert_equal(0, @player.strikeouts)
    assert_equal(0, @player.hits)
  end

  def test_strikeouts_increment
    @player.strikeout
    assert_equal(1, @player.strikeouts)
  end

  def test_at_bats_increments_with_strikeout
    @player.strikeout
    assert_equal(1, @player.at_bats)
  end

  def test_strikeout_isnt_hit
    @player.strikeout
    assert_equal(0, @player.hits)
  end
end
