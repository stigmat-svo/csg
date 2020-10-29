class ApplicationController < ActionController::Base
  def set_cart
    @cart = Cart.create(params[:id])
  end
end
