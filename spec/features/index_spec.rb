require 'rails_helper'

RSpec.describe 'As a user', type: :feature do
  describe 'When I visit the root path' do

    it 'when I select Fire nation from the select field, and click search I see the total number of people who live in the nation' do
      visit root_path
      select "Fire Nation", :from => "nation"
      save_and_open_page
      click_button("Search for Members")

      

      expect(page).to have_content(25)
    end

    it 'I see detailed information on the first 25 members of the nation' do
    
    end
  end
end