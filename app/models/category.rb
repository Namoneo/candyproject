class Category < ApplicationRecord
  has_many :products
  has_many :line_items
end
