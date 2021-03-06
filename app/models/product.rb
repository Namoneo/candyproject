class Product < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  belongs_to :category
  has_many :line_items
  validates :name, presence: true
  validates :price, presence: true


  def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end


  before_destroy :ensure_not_referenced_by_any_line_item


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

