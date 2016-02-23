require 'httparty'

class Forecast

  def initialize(zip)
    @response = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast10day/q/#{@zip}.json")
  end

  def day
    day = []
    @response["forecast"]["txt_forecast"]["forecastday"].each do |f|
    days = f["title"]
    day << [days]
    end
  end



  # def location
  #   @response["current_observation"]["display_location"]["full"]
  # end

end
