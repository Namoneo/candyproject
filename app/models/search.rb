class Search < ApplicationRecord
has_many :categories
has_many :products


  def search_products

    products = Product.all

    products = products.where(["name LIKE ?","%#{keywords}%"]) if keywords.present?
    products = products.where(["category LIKE ?", :category_id]) if category_id.present?
    products = products.where(["price >= LIKE ?", :min_price]) if min_price.present?
    products = products.where(["price <= LIKE ?", :max_price]) if max_price.present?

    return products
  end
end
