class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

#Rails makes the current session look like a hash to the controller, thus we are storing the id of the cart
# in the session by indexing it with the symbol cart_id. current_cart starts by getting the id from the session
# object and then attemps to find a cart corresponding to it. If this is not found, then a new Cart is created .
#The method is private thus it can be available only to controlers


  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end


end
