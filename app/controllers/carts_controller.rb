class CartsController < ApplicationController
  before_action :authenticate_user!
  def clean
    current_cart.clean!
    redirect_to :back
  end
  def checkout
    @order = Order.new
  end
end
