require 'rails_helper'

RSpec.feature "Manage pharmacy database",
  """
  In order to keep accurate information on pharmacy opening hours
  As a pseudo junkie
  I want to be able to read and update the information I keep on pharmacies
  """, type: :feature do

  background do
    visit '/'   # type into address bar and press
    click_on 'Manage Pharmacies'
  end

  scenario 'Create a pharmacy' do
    click_on 'New Pharmacy'                       # click a link OR a button
    fill_in 'Name', with: 'Ultimo Chemist Plus'   # type into a text field
    click_on 'Create Pharmacy'
    expect(page).to have_content 'Pharmacy was successfully created'
    click_on 'Back'
    expect(page).to have_content 'Ultimo Chemist Plus'
  end

end
