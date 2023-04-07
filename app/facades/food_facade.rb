class FoodFacade
  def food_search(search)
    json = FoodService.search_foods(search)
    @foods = json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end