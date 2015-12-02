require 'rails_helper'

# RSpec.feature "Manage ...", type: :feature, js: true do

feature "Manage pharmacy database",
  """
  In order to keep accurate information on pharmacy opening hours
  As a pseudo junkie
  I want to be able to read and update the information I keep on pharmacies
  """, js: true do

  background do
    visit '/'   # type into address bar and press returnx
    click_on 'Manage Pharmacies'
  end

  scenario 'Manage a pharmacy' do
    click_on 'New Pharmacy'                       # click a link OR a button
    fill_in 'Name', with: 'Ultimo Chemist Plus'   # type into a text field

    click_on 'Add an open period'
    fill_in 'Day', with: 'Thursday'
    fill_in 'Time from', with: '09:00 am'
    fill_in 'Time to', with: '08:00 pm'

    click_on 'Create Pharmacy'
    expect(page).to have_content 'Pharmacy was successfully created'

    click_on 'Back'
    expect(page).to have_content 'Ultimo Chemist Plus'

    # Check the data we supplied was actually stored:
    #
    # within('tr', text: "Ultimo Chemist Plus") do
    #   click_on 'Show'
    # end
    # expect(page).to have_content "Thursday: 9:00 AM - 8:00 PM"
  end

end
