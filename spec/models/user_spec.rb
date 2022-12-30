require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    it "should give an error if e-mail is blank" do
      @user = User.new(first_name: "John", last_name: "Doe", email: nil, password: "password")
      @user.valid?
      expect(@user.errors.full_messages[0]).to eq("Email can't be blank")
      expect(@user.errors.full_messages.length).to eq(1)
    end

    it "should give an error if first name is blank" do
    end

    it "should give an error if last name is blank" do
    end

    it "should give an error if password is blank" do
    end

    it "should have a password with a length greater than 8" do
    end

    it "should have matching password and password confirmation fields" do
    end

    it "should have a unique e-mail" do
    end
  end
end
