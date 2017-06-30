require 'rails_helper'
describe FetchWeatherData do

  it 'should search for weather using city and country' do
    @interactor = FetchWeatherData.call(city: 'London', country: 'GB')
    expect(@interactor).to be_a_success
    expect(@interactor.weather_data).to be_present
  end

  it 'should search for weather using lat and lon' do
    @interactor = FetchWeatherData.call(lat: -41.61, lon: -43.54)
    expect(@interactor).to be_a_success
    expect(@interactor.weather_data).to be_present
  end

  it 'should fail if country or city not present' do
    @interactor = FetchWeatherData.call(city: 'London')
    expect(@interactor).not_to be_a_success
    expect(@interactor.weather_data).not_to be_present
  end

  it 'should fail if lat or lon not present' do
    @interactor = FetchWeatherData.call(lon: -43.54)
    expect(@interactor).not_to be_a_success
    expect(@interactor.weather_data).not_to be_present
  end
end