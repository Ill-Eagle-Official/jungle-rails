require 'rails_helper'

RSpec.describe Product, type: :model do
  
  describe "Validations" do
    before(:each) do
      @product = Product.new
      @category = Category.new name: "Apparel"
    end

    it "should save all fields correctly" do
      @correct_product = Product.new name: "Shirt", price: 100, quantity: 10, category: @category
      @correct_product.save
      expect(@correct_product).to be_persisted
    end

    it "should not save without a name" do
      expect(@product).to_not be_valid
      expect(@product.errors.messages[:name]).to include("can't be blank")
    end

    it "should not save without a price" do
      expect(@product).to_not be_valid
      expect(@product.errors.messages[:price]).to include("can't be blank")
    end

    it "should not save without a quantity" do
      expect(@product).to_not be_valid
      expect(@product.errors.messages[:quantity]).to include("can't be blank")
    end

    it "should not save without a category" do
      expect(@product).to_not be_valid
      expect(@product.errors.messages[:category]).to include("can't be blank")
    end

  end

end
