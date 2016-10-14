class Product < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true

  def self.order_by_name
    order(:name)
  end
end
