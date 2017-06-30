RSpec.describe WeatherForecast, type: :model do

  before do
    @weather_obj = WeatherOfRandomCities.call(num_cities: 1).random_weathers.first
  end

  it 'class Should exist' do
    expect(Object.const_defined?('WeatherForecast')).to be_truthy
  end

  it 'should has attribute country_name' do
    expect(@weather_obj.respond_to?(:country_name)).to be_truthy
  end

  it 'should has attribute city_name' do
    expect(@weather_obj.respond_to?(:city_name)).to be_truthy
  end

  it 'should has attribute temperature' do
    expect(@weather_obj.respond_to?(:temperature)).to be_truthy
  end

  it 'should has attribute description' do
    expect(@weather_obj.respond_to?(:description)).to be_truthy
  end

  it 'should has attribute icon' do
    expect(@weather_obj.respond_to?(:icon)).to be_truthy
  end

  it 'should has attribute sys_type' do
    expect(@weather_obj.respond_to?(:sys_type)).to be_truthy
  end

  it 'should has attribute wind_speed' do
    expect(@weather_obj.respond_to?(:wind_speed)).to be_truthy
  end

  it 'should has attribute humidity' do
    expect(@weather_obj.respond_to?(:humidity)).to be_truthy
  end

  it 'should has attribute pressure' do
    expect(@weather_obj.respond_to?(:pressure)).to be_truthy
  end

  it 'should has attribute lat' do
    expect(@weather_obj.respond_to?(:lat)).to be_truthy
  end

  it 'should has attribute lon' do
    expect(@weather_obj.respond_to?(:lon)).to be_truthy
  end

  it 'should find weather by city' do
    current_weather = WeatherForecast.find_by_city_and_country('London', 'GB')
    expect(current_weather).to be_present
  end

  it 'should fetch 4 cities randomly by default' do
    random_weathers = WeatherForecast.random_cities
    expect(random_weathers.length).to equal(WeatherOfRandomCities::DEFAULT_NUM_CITIES)
  end
end