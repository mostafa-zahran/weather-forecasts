require 'rails_helper'

RSpec.describe WeatherForecastsController, type: :routing do
  describe 'weather forecasts routing' do

    it 'routes to #index' do
      expect(get: root_path).to route_to('weather_forecasts#index')
    end

    it 'routes to #show' do
      expect(get: find_weather_path(city: 'London', country: 'gb')).to route_to('weather_forecasts#find_weather', city: 'London', country: 'gb')
    end
  end
end
