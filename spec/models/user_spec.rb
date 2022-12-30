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
      @user = User.new(first_name: nil, last_name: "Doe", email: "example@email.com", password: "password")
      @user.valid?
      expect(@user.errors.full_messages[0]).to eq("First name can't be blank")
      expect(@user.errors.full_messages.length).to eq(1)
    end

    it "should give an error if last name is blank" do
      @user = User.new(first_name: "John", last_name: nil, email: "example@email.com", password: "password")
      @user.valid?
      expect(@user.errors.full_messages[0]).to eq("Last name can't be blank")
      expect(@user.errors.full_messages.length).to eq(1)
    end

    it "should give an error if password is blank" do
      @user = User.new(first_name: "John", last_name: "Doe", email: "example@email.com", password: nil)
      @user.valid?
      expect(@user.errors.full_messages.include? "Password can't be blank").to eq(true)
      expect(@user.errors.full_messages.length).to eq(2)
    end

    it "should give an error if password length is less than 8" do
      @user = User.new(first_name: "John", last_name: "Doe", email: "example@email.com", password: "qwerty")
      @user.valid?
      expect(@user.errors.full_messages[0]).to eq("Password is too short (minimum is 8 characters)")
      expect(@user.errors.full_messages.length).to eq(1)
    end

    it "should have matching password and password confirmation fields" do
    end

    it "should have a unique e-mail" do
    end
  end
end
