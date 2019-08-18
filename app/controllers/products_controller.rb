class ProductsController < ApplicationController
  # def index
  #   @products = Product.all
  #   @products_fake = Product.all
  #   @products.present?
  #   @products_fake.present?
  # end

  def index
    @products = Rails.cache.fetch("products") { Product.all }
  end
end
