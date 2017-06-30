feature 'Root page' do
  scenario 'Visit root page' do
    visit root_path
    expect(page).to have_content 'Random Forecasts'
  end
end
