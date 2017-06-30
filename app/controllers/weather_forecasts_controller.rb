class WeatherForecastsController < ApplicationController
  def index
    @current_weathers = WeatherForecast.random_cities
  end

  def find_weather
    begin
      @current_weather = WeatherForecast.find_by_city_and_country(search_params[:city], search_params[:country])
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