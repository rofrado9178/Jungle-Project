require 'rails_helper'



RSpec.describe Product, type: :model do
 describe "Validation" do

  it "should return true if name is presence" do
    @category = Category.create(name: "sports")
    @product = Product.create(name: "shoes", category: @category  , price: 10 , quantity: 30)
    expect(@product.name).to be_truthy
    end

  it "should return error message if name is nil" do
    @category = Category.create(name: "sports")
    @product = Product.create(name: nil, category: @category  , price: 10 , quantity: 30)
    expect(@product.errors.full_messages).to include("Name can't be blank")
    end

  it "return true if the price is presence" do
    @category = Category.create(name: "sports")
    @product = Product.create(name: "shoes", category: @category  , price: 10 , quantity: 30)
    expect(@product.price).to be_truthy
    end
    
  it "return error message if the price is not presence" do
    @category = Category.create(name: "sports")
    @product = Product.create(name: "shoes", category: @category  , price: nil , quantity: 30)
    expect(@product.errors.full_messages).to include("Price can't be blank")
    end

  it "return true if the quantity is presence" do
    @category = Category.create(name: "sports")
    @product = Product.create(name: "shoes", category: @category  , price: 10 , quantity: 30)
    expect(@product.quantity).to be_truthy
    end
  
  it "return error message if the price is not presence" do
    @category = Category.create(name: "sports")
    @product = Product.create(name: "shoes", category: @category  , price: 10 , quantity: nil)
    expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

  #using shoulda matcher validation sytax
  it{should belong_to(:category)}

 

 end
end
