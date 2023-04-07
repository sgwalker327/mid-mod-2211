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
        expect(page).to have_content('Total Results: 44128')
        expect(page).to have_css('.food', count: 10)
        
        within(first('.food')) do
          expect(page).to have_css('.gtinUpc')
          expect(page).to have_css('.description')
          expect(page).to have_css('.brandOwner')
          expect(page).to have_css('.ingredients')
      end
    end
  end
end