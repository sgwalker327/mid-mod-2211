require 'faraday'

class FoodService

  def self.search_foods(ingredient)
    get_url("/fdc/v1/foods/search?query=#{ingredient}")
  end

  private

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |f|
      f.params['api_key'] = ENV['FOOD_API_KEY']
    end
  end
end