require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")


class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new('salmon')
  end

  def test_fish_is_salmon
    assert_equal('salmon', @fish.name)
  end

end
