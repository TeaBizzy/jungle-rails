require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "should give an error if name is blank" do
      @product = Product.new(name: nil, price: 9.99, quantity: 1, category_id: 1)
      @product.valid?
      expect(@product.errors.full_messages[0]).to eq("Name can't be blank")
      expect(@product.errors.full_messages.length).to eq(1)
    end

    it "should give an error if price is blank" do
      @product = Product.new(name: "Pine Tree", quantity: 1, category_id: 1)
      @product.valid?
      expect(@product.errors.full_messages.include? "Price can't be blank").to eq(true)
      expect(@product.errors.full_messages.length).to eq(3)
    end

    it "should give an error if quantity is blank" do
      @product = Product.new(name: "Pine Tree", price: 9.99, quantity: nil, category_id: 1)
      @product.valid?
      expect(@product.errors.full_messages[0]).to eq("Quantity can't be blank")
      expect(@product.errors.full_messages.length).to eq(1)
    end

    it "should give an error if category is blank" do
      @product = Product.new(name: "Pine Tree", price: 9.99, quantity: 1)
      @product.valid?
      expect(@product.errors.full_messages.include? "Category can't be blank").to eq(true)
      expect(@product.errors.full_messages.length).to eq(2)
    end

    it "should contain no errors when given a name, price, quantity, and category" do
      @product = Product.new(name: "Pine Tree", price: 9.99, quantity: 1, category_id: 1)
      @product.valid?
      expect(@product.errors.full_messages.length).to eq(0)
    end
  end
end
