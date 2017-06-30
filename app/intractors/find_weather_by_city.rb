class FindWeatherByCity
  include Interactor

  before do
    context.fail! if context.country.blank? || context.city.blank?
  end

  def call
    context.current_weather = RecursiveOpenStruct.new(fetch_weather_data)
  end

  private

  def fetch_weather_data
    FetchWeatherData.call(city: context.city, country: context.country).weather_data
  end
end