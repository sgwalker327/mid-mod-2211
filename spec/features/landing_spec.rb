require 'rails_helper'

RSpec.describe 'Landing page', type: :feature do
  describe 'As a User' do
    context "When I visit '/'" do
      it 'I see a search bar' do
        visit root_path
        
        expect(current_path).to eq(root_path)
        expect(page).to have_button('Search')
        expect(page).to have_field(:q)
      end

      it 'When I fill in the search form with "sweet potatoes" and click "Search"' do
        visit root_path
        
        fill_in :q, with: 'sweet potatoes'
        click_button 'Search'
        
        expect(current_path).to eq(foods_path)
      end
    end
  end
end