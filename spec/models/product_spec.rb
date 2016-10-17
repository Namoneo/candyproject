require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      product = Product.new(name: "")
      product.valid?
      expect(product.errors).to have_key(:name)
    end

    it "is invalid without a price" do
      product = Product.new(price: "")
      product.valid?
      expect(product.errors).to have_key(:price)
    end
  end

  describe "#order_by_name" do
    let(:user) { create :user}
    let(:category) { create :category }
    let!(:product1) { create :product, name: "Acandy", user: user, category: category }
    let!(:product2) { create :product, name: "Bcandy", user: user, category: category  }
    let!(:product3) { create :product, name: "Ccandy", user: user, category: category  }

    it "returns a sorted array of products by names" do
      expect(Product.order_by_name).to match_array [product1, product2, product3]
    end
  end
end

