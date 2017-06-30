feature 'Search page' do
  scenario 'Search for weather in a city' do
    visit find_weather_path(city: 'London', country: 'gb')
    expect(page).to have_content 'Weather in London, GB'
  end
end
