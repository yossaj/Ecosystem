require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")


class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly",[])
  end

  def test_bear_is_yogi
    assert_equal('Yogi', @bear.name)
  end

end
