class AddressesController < ApplicationController
  before_action :find_address, only: [:show, :edit, :update]

  def new
    @address = Address.new
  end

  def create
    @order = current_order
    binding.pry
    @address = @order.address.new(addresses_params)
    if @address.save
      flash.now[:success] = 'Added your address'
      redirect_to @address
    else
      render :new
    end
  end

  def edit; end

  def update
    if @address.update_attributes(addresses_params)
      flash.now[:success] = 'Update information about your address'
      redirect_to @address
    else
      render :edit
    end
  end

  def show; end

  private

  def find_address
    @address = Address.find(params[:id])
  end

  def addresses_params
    params.require(:address).permit(:first_name, :last_name, :city, :address, :options)
  end
end
