class CartsController < ApplicationController
  before_action :authenticate_user!
  def show
    cart_id = $redis.smembers current_user_cart
    @cart_products = Product.find(cart_ids)
  end

  def add
    $redis.sadd current_user_cart, params[:id]
    render json: current_user.cart_count, status: 200
  end

  def remove
    $redis.srem current_user_cart, params[:id]
    render json: current_user.cart_count, status: 200
end

private

def current_user_cart 
  "cart#{current_user.id}"
end
end