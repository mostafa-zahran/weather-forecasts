class WeatherForecastsController < ApplicationController
  def index
    @current_weathers = WeatherOfRandomCities.call.random_weathers
  end

  def find_weather
    begin
      @current_weather = FindWeatherByCity.call(search_params).current_weather
      raise if @current_weather.blank?
    rescue
      redirect_to root_path, flash: { error: "Your inputs couldn't be found" }
    end
  end

  private

  def search_params
    params.permit(:city, :country)
  end
end