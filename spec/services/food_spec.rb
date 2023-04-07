require 'rails_helper'

RSpec.describe FoodService do
  describe 'class methods' do
    describe '.search_foods' do
      it 'returns a list of foods that contain the ingredient' do


        foods = FoodService.search_foods('sweet potatoes')

        expect(foods).to be_a(Hash)
        expect(foods[:foods].count).to eq(50)
        expect(foods[:foods]).to be_an(Array)
        expect(foods[:foods].first[:description]).to include('SWEET POTATOES')
        
      end
    end
  end
end