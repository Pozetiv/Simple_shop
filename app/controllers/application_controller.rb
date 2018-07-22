class ApplicationController < ActionController::Base
  helper_method :current_order

  private

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      Order.create
    end
  end

end
