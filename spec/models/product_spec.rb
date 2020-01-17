require 'rails_helper'

describe Product do
    it { should have_many(:reviews) }
    it { should validate_presence_of :name }
    it("titleizes the name of a product") do
     product = Product.create({name: "kale"})
     expect(product.name()).to(eq("Kale"))
   end
  end