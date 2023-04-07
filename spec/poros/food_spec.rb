require 'rails_helper'

RSpec.describe Food do
  it "exists" do
    attrs = { description: "Sweet Potatoes",
              gtinUpc: "8901020020844",
              ingredients: "ORGANIC SWEET POTATOES.",
              brandOwner: "NOT A BRANDED ITEM" }
    
    food = Food.new(attrs)

    expect(food).to be_a(Food)
    expect(food.brandOwner).to eq("NOT A BRANDED ITEM")
    expect(food.description).to eq("Sweet Potatoes")
    expect(food.ingredients).to eq("ORGANIC SWEET POTATOES.")
    expect(food.gtinUpc).to eq("8901020020844")
  end
end