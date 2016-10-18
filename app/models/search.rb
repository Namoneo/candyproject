class Search < ApplicationRecord

  def search_products

    products = Product.all

    products = products.where(["name LIKE ?","%#{keywords}%"]) if keywords.present?
    products = products.where(["category LIKE ?", category]) if category.present?
    products = products.where(["price >= LIKE ?", min_price]) if min_price.present?
    products = products.where(["price <= LIKE ?", max_price]) if max_price.present?

    return products
  end
end
