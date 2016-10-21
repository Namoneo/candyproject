require 'rails_helper'

RSpec.describe LineItem, type: :model do

  describe "validations" do
    it "is invalid without a home_type" do
      room = Room.new(home_type: "")
      room.valid?
      expect(room.errors).to have_key(:home_type)
    end
end
