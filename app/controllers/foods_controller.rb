class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.new.food_search(params[:q])
    @search_data = FoodFacade.new.search_data(params[:q])
  end
end