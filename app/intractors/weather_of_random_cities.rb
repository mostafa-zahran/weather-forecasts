class WeatherOfRandomCities
  include Interactor

  DEFAULT_NUM_CITIES = 4

  before do
    context.num_cities ||= DEFAULT_NUM_CITIES
  end

  def call
    context.random_weathers = generate_random_cities_data
  end

  private

  def generate_random_cities_data
    (1..context.num_cities).map do |_index|
      lat = rand(-90.000000000...90.000000000)
      lon = rand(-180.000000000...180.000000000)
      RecursiveOpenStruct.new(fetch_weather_data(lat, lon))
    end
  end

  def fetch_weather_data(lat, lon)
    FetchWeatherData.call(lat: lat, lon: lon).weather_data
  end
end