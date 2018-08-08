class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @order.add_product(orders_items_params)
    session[:order_id] = @order.id
    find_product = Product.find(params[:order_item][:product_id])
    redirect_to product_path(find_product), success: "#{find_product.name} added to cart"
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    redirect_to carts_path
  end

  private

  def orders_items_params
    params.require(:order_item).permit(:product_id, :quantity)
  end
end