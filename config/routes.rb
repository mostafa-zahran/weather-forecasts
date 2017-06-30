Rails.application.routes.draw do
  root to: 'weather_forecasts#index'
  get :find_weather, controller: :weather_forecasts, action: :find_weather
end
