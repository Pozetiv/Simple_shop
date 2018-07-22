class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @order_item = @order.order_items.new(orders_items_params)
    @order_item.save
    session[:order_id] = @order.id
  end

  def destroy
    @order = current_order
    @item = @order.order_item.find(params[:id])
    @item.destroy
    @order.save
  end

  private

  def orders_items_params
    params.require(:order_item).permit(:product_id, :quantity)
  end
end