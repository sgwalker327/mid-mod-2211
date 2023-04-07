class Food
  attr_reader :totalHits, :gtinUpc, :description, :brandOwner, :ingredients

  def initialize(data)
    
    @totalHits = data[:totalHits]
    @gtinUpc = data[:foods][:gtinUpc]
    @description = data[:foods][:description]
    @brandOwner = data[:foods][:brandOwner]
    @ingredients = data[:food][:ingredients]
  end
end