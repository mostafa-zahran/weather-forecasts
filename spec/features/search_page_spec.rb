feature 'Search page' do
  scenario 'Search for weather in a city' do
    visit find_weather_path(city: 'London', country: 'gb')
    expect(page).to have_content 'Weather in London, GB'
  end

  scenario 'Search for weather with invalid data' do
    visit find_weather_path(city: 'xxxxx')
    expect(page).to have_content "Your inputs couldn't be found"
  end
end
