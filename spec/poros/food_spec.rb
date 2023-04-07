require 'rails_helper'

RSpec.describe Food do
  it "exists" do
    attrs = { decription: 'Sweet Potatoes',
              gtinUpc: "8901020020844",
              ingredients: "ORGANIC SWEET POTATOES.",
              brandOwner: "NOT A BRANDED ITEM" }
    
    food = Food.new(attrs)

    expect(food).to be_a(Food)
  end
end