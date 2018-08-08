class ApplicationController < ActionController::Base
  helper_method :current_order
  add_flash_types :success, :info, :danger, :primary, :dark, :light

  private

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      Order.create
    end
  end
end
