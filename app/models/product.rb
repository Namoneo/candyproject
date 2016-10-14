class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true

  def self.order_by_name
    order(:name)
  end
end
