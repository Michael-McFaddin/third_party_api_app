class Api::WeatherStationController < ApplicationController

  def index
    response = HTTP.get("https://api.weatherbit.io/v2.0/current?postal_code=#{params[:zipcode]}&country=US&key=Key_Here")

    @weather = response.parse["data"]
    render "index.json.jb"
  end

end
