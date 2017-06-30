require 'rails_helper'
describe KelvinToCelsius do

  it 'should convert kelvin to celsius' do
    @interactor = KelvinToCelsius.call(kelvin: 220)
    expect(@interactor).to be_a_success
    expect(@interactor.celsius).to be_present
  end

  it 'should fail if kelvin not passed' do
    @interactor = FetchWeatherData.call(kelvin: 220)
    expect(@interactor).not_to be_a_success
    expect(@interactor.weather_data).not_to be_present
  end
end