class Cart < ApplicationRecord

  #A cart has many line items, these are linked to the cart because each line item has reference to the cart's id
  has_many :line_items, dependent: :destroy


end
