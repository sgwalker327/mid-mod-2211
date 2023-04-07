require 'rails_helper'

RSpec.describe '/foods' do
  describe 'As a user' do
    context 'When I am redirected from the landing page through a search function' do
      it 'I should be on the foods index page and see these contents' do
        visit root_path
        
        fill_in :q, with: 'sweet potatoes'
        click_button 'Search'
        
        expect(current_path).to eq(foods_path)
        
        expect(page).to have_content("Food Search Results for sweet potatoes")
        
        expect(page).to have_content("Description: SWEET POTATOES")
        expect(page).to have_content("GTIN/UPC Code: 8901020020844")
        expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
        expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES.")
      end
    end
  end
end