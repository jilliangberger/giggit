require 'rails_helper'

feature 'Band Authentication' do
  scenario 'allows a band to signup' do

    visit '/'

    expect(page).to have_link('Signup Band')

    click_link 'Signup Band'

    fill_in 'Band name', with: 'The Clash'
    fill_in 'Email', with: 'john@doe.com'
    fill_in 'Password', with: 'COd3rs95'
    fill_in 'Password confirmation', with: 'COd3rs95'

    click_button 'Create Band'

    expect(page).to have_text('Band was successfully created.')
    # expect(page).to have_text('Signed in as john@doe.com')
  end
end
feature 'Venue Authentication' do
  scenario 'allows a venue to signup' do
   # testing that sign up venue will show up on any page,
  # because it was coded to the nav bar

    visit '/bands'

    expect(page).to have_link('Signup Venue')

    click_link 'Signup Venue'

    fill_in 'Venue name', with: 'The Bluebird'
    fill_in 'Email', with: 'john@doe.com'
    fill_in 'Password', with: 'COd3rs95'
    fill_in 'Password confirmation', with: 'COd3rs95'

    click_button 'Create Venue'

    expect(page).to have_text('Venue was successfully created.')
  end
end

