require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

class TestRiver < MiniTest::Test

  def setup
    @fish = Fish.new('salmon')
    @river = River.new('Amazon',['salmon','salmon','pike','catfish'])
    @bear = Bear.new("Yogi", "Grizzly",[])
  end

  def test_river_is_amazon
    assert_equal('Amazon', @river.name)
  end

  def test_river_loses_fish
    @bear.eat_fish_from_river(@river)
    assert_equal(3,@river.fish.count)
  end

end
