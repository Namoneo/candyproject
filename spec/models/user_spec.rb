require 'rails_helper'

RSpec.describe User, type: :model do

    describe "#has a profile?" do
    let(:user) { create :user}
    let(:profile) { create :profile }

    let!(:user1) { create :user, email: "malenka@codaisseur.nl", profile: profile }
    let!(:user2) { create :user, email: "test@codaisseur.nl", profile: nil }

    it "has a profile" do
      expect(user1.has_profile?).to eq(true)
      expect(user2.has_profile?).to eq(false)
      end
    end
end
