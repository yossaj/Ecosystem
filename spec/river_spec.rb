require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

class TestRiver < MiniTest::Test

  def setup

    @river = River.new('Amazon',['salmon','salmon','pike','catfish'])
  end

  def test_river_is_amazon
    assert_equal('Amazon', @river.name)
  end

end
