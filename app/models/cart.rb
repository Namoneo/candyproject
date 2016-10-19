class Cart < ApplicationRecord

  #A cart has many line items, these are linked to the cart because each line item has reference to the cart's id
  has_many :line_items, dependent: :destroy



# A method that searches the product id and if it finds it already present in the cart then in increments the quantity of the product by 1
  def add_product(product_id)
    current_item = line_items.find_by_product_id(product_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product_id)
    end
    current_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end


end
