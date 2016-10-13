class Profile < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :street_address, presence: true
    validates :number, presence: true
    validates :city, presence: true
    validates :zip_code, presence: true
    validates :state_region, presence: true
    validates :country, presence: true

    def full_name
      "#{first_name} #{last_name}"
    end
  end