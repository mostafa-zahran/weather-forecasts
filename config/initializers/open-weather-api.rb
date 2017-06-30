# Note that 'config' is an instance of `OpenWeatherAPI::API` (just name it as you like).
OpenWeatherAPI.configure do |config|
  # API key
  config.api_key = 'ece65e4c1820662d2a7b1c92104e1b60'

  # Optionals
  #config.default_language = 'es'     # 'en' by default
  #config.default_country_code = 'es' # nil by default (ISO 3166-1 alfa2)
  #config.default_units = 'metric'    # 'metric' by default
end