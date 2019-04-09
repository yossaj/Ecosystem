require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")


class TestBear < MiniTest::Test

  def setup
    @fish = Fish.new('salmon')
    @river = River.new('Amazon',['salmon','salmon','pike','catfish'])
    @bear = Bear.new("Yogi", "Grizzly",[])
  end

  def test_bear_is_yogi
    assert_equal('Yogi', @bear.name)
  end

  def test_bears_belly_contains_fish
    @bear.eat_fish_from_river(@river)
    assert_equal(1,@bear.belly.count)
  end

end
