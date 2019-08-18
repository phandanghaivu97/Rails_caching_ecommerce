class CartController < ApplicationController
  # def create
  #   # session[:cart] = nil
  #   if session[:cart].nil?
  #     session[:cart] = []
  #     session_data = {params[:product_id] => {product_name: params[:product_name], quantity: 1, total_price: params[:total_price]}}
  #     session[:cart] << session_data
  #   elsif session[:cart].select {|item| item.keys.first == params[:product_id]}.blank?
  #     session_data = {params[:product_id] => {product_name: params[:product_name], quantity: 1, total_price: params[:total_price].to_f}}
  #     session[:cart] << session_data
  #   else
  #     session[:cart].each do |item|
  #       item[params[:product_id]]["quantity"] += 1
  #       item[params[:product_id]]["total_price"] = item[params[:product_id]]["total_price"].to_f + params[:total_price].to_f
  #     end
  #   end
  #   flash[:success] = "Item added"
  #   redirect_to request.referrer
  # end
  def create
    #cookies.permanent["1"] = nil
    byebug
    if cookies.permanent["1"].nil?
      cookies.permanent["1"] = {cart: {}}
      cookies.permanent["1"] = JSON.generate cart: {product_id: params[:product_id], quantity: 1}
    end
    flash[:success] = "Item added"
    redirect_to request.referrer
  end
end
