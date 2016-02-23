require 'minitest/autorun'
require 'minitest/pride'
require './conditions.rb'
require './forecast.rb'


class Conditions
  def initialize(zip)
    @response = JSON.parse(File.read("conditions.json"))
  end
end

class Forecast
  def initialize(zip)
    @response = JSON.parse(File.read("forecast.json"))
  end
end

class WeatherTests < Minitest::Test
  def test_conditions
    c = Conditions.new(94101)
    assert_equal 68.4, c.temperature
    assert_equal "San Francisco, CA", c.location

    # puts c.temperature
    # puts c.location
  end

  def test_forecast
    f = Forecast.new(94101)
    assert_equal "Monday", f.day[0]

    puts f.day


  end
end
