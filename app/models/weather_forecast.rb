class WeatherForecast
  attr_accessor :country_name, :city_name, :temperature, :description, :icon,
                :sys_type, :wind_speed, :humidity, :pressure, :lat, :lon

  def initialize(weather_data)
    @city_name =  weather_data['name'].presence || 'Unknown'
    @country_name = weather_data['sys']['country'].presence || 'Unknown'
    @sys_type = weather_data['sys']['type']
    @temperature = KelvinToCelsius.call(kelvin: weather_data['main']['temp']).celsius
    @wind_speed = weather_data['wind']['speed']
    @humidity = weather_data['main']['humidity']
    @pressure = weather_data['main']['pressure']
    @lat = weather_data['coord']['lat']
    @lon = weather_data['coord']['lon']
    weather = weather_data['weather'].first
    if weather.present?
      @description = weather['description']
      @icon = weather['icon']
    end
  end

  class << self
    def random_cities(num_cities = nil)
      WeatherOfRandomCities.call(num_cities: num_cities).random_weathers
    end

    def find_by_city_and_country(city_name, country_code)
      FindWeatherByCity.call(city: city_name, country: country_code).current_weather
    end
  end
end