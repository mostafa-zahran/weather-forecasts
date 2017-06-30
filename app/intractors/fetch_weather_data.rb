class FetchWeatherData
  include Interactor

  before do
    context.options = set_options
    context.fail! if context.options.blank?
  end

  def call
    context.weather_data = Rails.configuration.open_weather_api.current(context.options)
  end

  private

  def set_options
    if context.country.present? && context.city.present?
      {city: context.city, country_code: context.country}
    elsif context.lat.present? && context.lon.present?
      {lon: context.lon, lat: context.lat}
    else
      {}
    end
  end
end