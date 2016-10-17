class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_one :profile
  has_many :products, dependent: :destroy

  def has_profile?
    profile.present?
  end

  def full_name
    profile.full_name
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def has_admin?
    has.admin?
  end
end
