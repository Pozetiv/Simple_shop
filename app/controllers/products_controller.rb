class ProductsController < ApplicationController
  before_action :find_product, only: [:edit, :update, :destroy, :show]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(products_params)
    if @product.save
      if params[:images]
        params[:images].each do |image|
          @product.images.create(image: image)
        end
      end
      redirect_to @product
    else
      render :new
    end
  end

  def edit; end

  def update
    if @product.update_attributes(products_params)
      redirect_to  @product, success: "#{@product.name} is updated"
    else
      render :edit
    end
  end

  def show
    @order_items = current_order.order_items.new
  end

  def destroy
    if @pproduct.destroy
      redirect_to :index
    else
      redirect_to @product, danger: 'We are can not delete this product'
    end
  end

  private

  def find_product
    @product = Product.find(params[:id])
  end

  def products_params
    params.require(:product).permit(:name, :description, :price, :image)
  end
end
