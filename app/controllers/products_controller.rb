class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def show
    @product = Product.find(params[:id])
  end
  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
    else
      flash[:alert] = "you have got it!"
    end

    redirect_to product_path(@product)
  end
end
