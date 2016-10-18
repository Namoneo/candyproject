class Product < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true

  def self.order_by_name
    order(:name)
  end

  def self.search(search)
    if search
      where(["name LIKE ?","%#{search}%"])
    else
      all
    end
  end
end
