require 'rails_helper'

RSpec.describe FoodService do
  describe 'class methods' do
    describe '.search_foods' do
      it 'returns a list of foods that contain the ingredient' do
        response = File.read('spec/fixtures/foods.json')
        stub_request(:get, "https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV['FOOD_API_KEY']}&query=sweet%20potatoes").
          to_return(status: 200, body: response)

        foods = FoodService.search_foods('sweet potatoes')

        expect(foods).to be_a(Array)
        expect(foods.count).to eq(10)

        food = foods.first

        expect(food).to have_key(:gtinUpc)
        expect(food[:gtinUpc]).to be_a(String)

        expect(food).to have_key(:description)
        expect(food[:description]).to be_a(String)

        expect(food).to have_key(:brandOwner)
        expect(food[:brandOwner]).to be_a(String)

        expect(food).to have_key(:ingredients)
        expect(food[:ingredients]).to be_a(String)
      end
    end
  end
end