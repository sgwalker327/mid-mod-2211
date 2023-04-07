require 'rails_helper'

RSpec.describe '/foods' do
  describe 'As a user' do
    context 'When I am redirected from the landing page through a search function' do
      it 'I should be on the foods index page and see these contents' do
        visit root_path
        
        fill_in :q, with: 'sweet potatoes'
        click_button 'Search'
        
        expect(current_path).to eq(foods_path)
       
      end
    end
  end
end