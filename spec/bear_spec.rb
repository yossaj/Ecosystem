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

  def test_bear_can_roar
    assert_equal("raaaawwwwr",@bear.roar)
  end

  def test_bear_knows_how_many_fish_it_has_eaten
    @bear1= Bear.new("Yogi", "Grizzly",['catfish','small salmon'])
    assert_equal("I have eaten 2 fish! 2 yummy fish!", @bear1.ate_fish)
  end


end
