require 'rails_helper'
describe WeatherOfRandomCities do

  it 'should fetch 4 cities randomly by default' do
    @interactor = WeatherOfRandomCities.call
    expect(@interactor).to be_a_success
    expect(@interactor.random_weathers.length).to equal(WeatherOfRandomCities::DEFAULT_NUM_CITIES)
  end

  it 'should fetch num_cities cities randomly by default' do
    num_cities = 5
    @interactor = WeatherOfRandomCities.call(num_cities: num_cities)
    expect(@interactor).to be_a_success
    expect(@interactor.random_weathers.length).to equal(num_cities)
  end
end