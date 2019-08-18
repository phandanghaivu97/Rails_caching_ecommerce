class ProductsController < ApplicationController
  # def index
  #   Run a find query
  #   @products = Product.all
  #   @products = Product.all
  # end

  def index
    @products = Rails.cache.fetch("products", expires_in: 12.hours) { Product.all }
  end
end
