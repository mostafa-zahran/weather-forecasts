require 'rails_helper'
describe FindWeatherByCity do

  it 'should search for weather using city and country' do
    @interactor = FindWeatherByCity.call(city: 'London', country: 'GB')
    expect(@interactor).to be_a_success
    expect(@interactor.current_weather).to be_present
  end

  it 'should fail if country or city not present' do
    @interactor = FindWeatherByCity.call(city: 'London')
    expect(@interactor).not_to be_a_success
    expect(@interactor.current_weather).not_to be_present
  end
end