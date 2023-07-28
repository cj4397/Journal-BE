require 'rails_helper'

RSpec.describe User, type: :model do

let(:user) {
    User.create(email: "user_email.com",
             password: "password")
  }

   context "Generate token" do
    it "Generates 32 characters token using email as base" do
      expect(user.generate_token).to_not be eql("user_email.com")
    end
  end

end
