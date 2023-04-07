class FoodFacade
  def food_search(search)
    json = FoodService.search_foods(search)
    foods = json.map do |food_data|
      Food.new(food_data)
    end
  end

  def search_data(search)
    json = FoodService.search_foods(search)
    SearchData.new(json)
  end
end