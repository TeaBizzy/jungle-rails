require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "should give an error if name is blank" do
      @product = Product.new(name: nil, price: 9.99, quantity: 1, category_id: 1)
      @product.valid?
      expect(@product.errors.full_messages[0]).to eq("Name can't be blank")
      expect(@product.errors.full_messages.length).to eq(1)
    end

    it "should give an error if no price exists" do
    end

    it "should give an error if no quantity exists" do
    end

    it "should give an error if no category exists" do
    end

    it "should contain a name, price, qunatity, and category" do
    end
  end
end
