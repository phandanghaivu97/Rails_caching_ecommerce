class Product < ApplicationRecord

  def self.insert_product
    products = []
    100.times do |i|
      products << Product.new(name: "Product #{i}", price: "1000")
    end

    products.each do |product|
      product.save
    end
  end

  def self.import_product
    products = []
    100.times do |i|
      products << Product.new(name: "Product #{i}", price: "1000")
    end
    byebug
    import products
  end
end
