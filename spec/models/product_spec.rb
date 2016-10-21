require 'rails_helper'

RSpec.describe Product, type: :model do


  # validations

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

  # method: order_by_name

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

  # method: search

      describe "#search" do
        let(:user) { create :user}
        let(:category) { create :category }
        subject { Product.search("C") }

        let(:product1) { create :product, name: "CandyA", user: user, category: category }
        let(:product2) { create :product, name: "CandyB", user: user, category: category  }
        let(:product3) { create :product, name: "Nocandy", user: user, category: category  }

        it "returns a sorted array of results that match" do
          expect(subject).to match_array [product1, product2]
          expect(subject).not_to include product3
        end
      end

    #Association with category

    describe "association with category" do
      let(:user) { create :user}
      let(:category) { create :category }
      let(:product) { create :product, user: user, category: category }

      it "belongs to a category" do
        product = category.products.new(name: "testproduct")

        expect(product.category).to eq(category)
      end
    end

    #Association with user

  describe "association with user" do
    let(:user) { create :user}
    let(:category) { create :category }
    let(:product) { create :product, user: user, category: category }

    it "belongs to a user" do
      product = user.products.new(name: "testproduct")

      expect(product.user).to eq(user)
    end
  end


    #Association with photo

    describe "association with photo" do
      let(:user) { create :user}
      let(:category) { create :category }
      let(:product) { create :product, user: user, category: category }
      let!(:photo) { create :photo, product: product }

      it "has many photos" do
        photo1 = product.photos.new(image: "MyString")
        photo2 = product.photos.new(image: "MyString")

        expect(product.photos).to include(photo1)
        expect(product.photos).to include(photo2)
      end
    end

  #Association with line item
    describe "association with line items" do
      let(:user) { create :user}
      let(:category) { create :category }
      let(:product) { create :product, user: user, category: category }
      let!(:photo) { create :photo, product: product }
      let!(:cart) { create :cart }
      let!(:line_item) { create :line_item, product: product, cart: cart }


      it "has many line items" do
        line_item1 = product.line_items.new(product_id: 1)
        line_item2 = product.line_items.new(product_id: 2)

        expect(product.line_items).to include(line_item1)
        expect(product.line_items).to include(line_item2)
      end
    end
end


