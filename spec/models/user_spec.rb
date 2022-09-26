require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe "Validations" do
    before(:each) do
      @user = User.new
    end

    it "should save all fields correctly" do
      @correct_user = User.new name: "John", email: "john@john.com", password: "password", password_confirmation: "password"
      @correct_user.save
      expect(@correct_user).to be_valid
    end

    it "should not save without a name" do
      expect(@user).to_not be_valid
      expect(@user.errors.messages[:name]).to include("can't be blank")
    end

    it "should be invalid without a password" do
      expect(@user).to_not be_valid
      expect(@user.errors.messages[:password]).to include("can't be blank")
    end

    it "should be invalid if password and confirmation don't match" do
      correct_user = User.new name: "John", email: "john@john.com", password: "password", password_confirmation: "password"
      incorrect_user = User.new name: "John", email: "john@john.com", password: "password", password_confirmation: "passWORD"
      expect(incorrect_user.password).to_not eq(incorrect_user.password_confirmation)
      expect(correct_user.password).to eq(correct_user.password_confirmation)
    end

    it "should be invalid without an email" do
      expect(@user).to_not be_valid
      expect(@user.errors.messages[:email]).to include("can't be blank")
    end

    it "should be invalid if email is not unique" do
      @user1 = User.new name: "John", email: "john@john.com", password: "password", password_confirmation: "password"
      @user2 = User.new name: "John", email: "john@john.com", password: "password", password_confirmation: "password"
      @user1.save
      @user2.save
      expect(@user2).to_not be_valid
      expect(@user2.errors.messages[:email]).to include("has already been taken")
    end

    it "should be invalid if password is less than 6 characters" do
      @user = User.new name: "John", email: "john@john.com", password: "pass", password_confirmation: "pass"
      expect(@user).to_not be_valid
      expect(@user.errors.messages[:password]).to include("is too short (minimum is 6 characters)")
    end
    
  end

  describe ".authenticate_with_credentials" do

    it "should authenticate with correct credentials" do
      @user = User.new name: "John", email: "john@john.com", password: "password", password_confirmation: "password"
      @user.save
      @correct_user = User.authenticate_with_credentials("john@john.com", "password")
      expect(@correct_user).to eq(@user)
    end

    it "should authenticate with incorrect casing" do
      @user = User.new name: "John", email: "john@john.com", password: "password", password_confirmation: "password"
      @user.save
      @incorrect_user = User.authenticate_with_credentials("John@John.com", "password")
      expect(@incorrect_user).to eq(@user)
    end

    it "should authenticate with spaces before and after email" do
      @user = User.new name: "John", email: "john@john.com", password: "password", password_confirmation: "password"
      @user.save
      @incorrect_user = User.authenticate_with_credentials(" john@john.com ", "password")
      expect(@incorrect_user).to eq(@user)
    end

  end
    
end
