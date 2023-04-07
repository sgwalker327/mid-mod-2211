require 'rails_helper'

RSpec.describe FoodFacade do
  describe 'food_search' do
    it 'returns a list of foods that contain the ingredient' do
      food = FoodFacade.new.food_search('sweet potatoes')

      expect(food).to be_a(Array)
    end
  end
end