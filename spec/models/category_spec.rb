require 'rails_helper'

RSpec.describe Category, type: :model do

  describe "association with product" do
    let(:user) { create :user }
    let(:category) { create :category }
    let(:product) { create :product}

    it "has many products" do
    product1 = category.products.new
    product2 = category.products.new

    expect(category.products).to include(product1)
    expect(category.products).to include(product2)
    end
  end
end



