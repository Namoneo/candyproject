require 'rails_helper'

RSpec.describe LineItem, type: :model do


  #Association with product

  describe "association with product" do
    let(:user) { create :user}
    let(:category) { create :category }
    let(:line_item) { create :line_item, user: user, category: category }
    let(:product) { create :product, user: user, category: category }

    it "belongs to a product" do
      line_item = product.line_items.new

      expect(line_item.product).to eq(product)
    end
  end

  #Association with cart

  describe "association with cart" do
    let(:user) { create :user}
    let(:category) { create :category }
    let(:line_item) { create :line_item, user: user, category: category }
    let(:product) { create :product, user: user, category: category }
    let(:cart) { create :cart }

    it "belongs to a cart" do
      line_item = cart.line_items.new

      expect(line_item.cart).to eq(cart)
    end
  end
end
