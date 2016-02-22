require 'minitest/autorun'
require 'minitest/pride'
require './conditions.rb'
require './forecast.rb'


class Conditions
  def initialize(zip)
    @response = JSON.parse(File.read("conditions.json"))
  end
end


class WeatherTests < Minitest::Test
  def test_conditions
    c = Conditions.new(94101)
    assert_equal 68.4, c.temperature
    assert_equal "San Francisco, CA", c.location
  end
end
