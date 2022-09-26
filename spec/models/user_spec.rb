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

    
    
  end
    
end
