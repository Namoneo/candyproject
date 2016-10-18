class User < ApplicationRecord
  enum role: [:customer, :admin]
  after_initialize :set_default_role, :if => :new_record?
  has_one :profile
  has_many :products, dependent: :destroy
  
  def set_default_role
    self.role ||= :customer
  end

  def has_profile?
    profile.present?
  end

  def full_name
    profile.full_name
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
