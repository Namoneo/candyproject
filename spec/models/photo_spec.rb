require 'rails_helper'

RSpec.describe Photo, type: :model do

  #Association with product.
  describe "association with product" do
    let(:user) { create :user}
    let(:category) { create :category }
    let(:product) { create :product, user: user, category: category }

    it "belongs to a product" do
      photo = product.photos.new(image: "MyString")

      expect(photo.product).to eq(product)
    end
  end
end
