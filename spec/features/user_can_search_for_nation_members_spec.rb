require 'rails_helper'

feature 'user can search for nation members' do
  scenario 'user submits valid nation' do
    # As a user,
    # When I visit "/"
    visit root_path
    # And I Select "Fire Nation" from the select field
    select "Fire Nation", from: :nation
    # (Note: Use the existing select field)
    # And I click "Search For Members“
    click_on 'Search For Members'
    # Then I should be on page “/search”
    expect(current_path).to eq(search_path)
    # Then I should see the total number of people who live in the Fire Nation. (i.e. there are 97 total)
    expect(page).to have_content('97 results found')
    # And I should see a list with the detailed information for all 97 members of the Fire Nation.
    expect(page).to have_css('.member', count: 97)

    # And for each of the members I should see:
    within(first('.member')) do
      # - The name of the member 
      expect(page).to have_css(".name")
      # (and their photo, if they have one)
      expect(page).to have_css('.photo')
      # - The list of allies and a list of enemies (if they have any)
      expect(page).to have_css('.allies')
      expect(page).to have_css('.enemies')
      # - Any affiliation that the member has (if they have any)
      expect(page).to have_css('.affiliation')
    end
  end
end