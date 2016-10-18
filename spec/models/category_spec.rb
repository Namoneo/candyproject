require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "association with product" do
    let(:user) { create :user }
    let(:category) { create :category }

    let(:product1) { create :product, name: "Candybar", categories: [category] }
    let(:product2) { create :product, name: "Lollypop", categories: [category] }
    let(:product3) { create :product, name: "sweets", categories: [category] }

    it "has products" do
      expect(category.products).to include(product1)
      expect(category.products).to include(product2)
      expect(category.products).to include(product3)
    end
  end
end

##Test is failing because relationship with product is nog many to many -> change test to 1 to many.




