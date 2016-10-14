require 'rails_helper'

RSpec.describe Profile, type: :model do


  describe "validations" do
    it "is invalid without a first_name" do
      profile = Profile.new(first_name: "")
      profile.valid?
      expect(profile.errors).to have_key(:first_name)
    end

    it "is invalid without a last_name" do
      profile = Profile.new(last_name: "")
      profile.valid?
      expect(profile.errors).to have_key(:last_name)
    end

    it "is invalid without a street_address" do
      profile = Profile.new(street_address: "")
      profile.valid?
      expect(profile.errors).to have_key(:street_address)
    end

    it "is invalid without a number" do
      profile = Profile.new(number: "")
      profile.valid?
      expect(profile.errors).to have_key(:number)
    end

    it "is invalid without a city" do
      profile = Profile.new(city: "")
      profile.valid?
      expect(profile.errors).to have_key(:city)
    end

    it "is invalid without a zip_code" do
      profile = Profile.new(zip_code: "")
      profile.valid?
      expect(profile.errors).to have_key(:zip_code)
    end

    it "is invalid without a state_region" do
      profile = Profile.new(state_region: "")
      profile.valid?
      expect(profile.errors).to have_key(:state_region)
    end

    it "is invalid without a country" do
      profile = Profile.new(country: "")
      profile.valid?
      expect(profile.errors).to have_key(:country)
    end

    describe User do
      describe "#full_name" do
        it "is composed of first and last name" do
          profile = build(:profile, first_name: "Malenka", last_name: "van Ommen")
          expect(profile.full_name).to eq "Malenka van Ommen"
        end
      end
    end
  end
end
