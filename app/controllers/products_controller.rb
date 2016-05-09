class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
      if @product.save
        redirect_to @product
      else
        render :new
      end
  end

  def index
    @products = Product.near([current_user.latitude, current_user.longitude], 2000)
  end

  def edit
  end

  private   
  def product_params     
    params.require(:product).permit(:name, :price, :description, :quantity, :latitude, :longitude, :address,
    :condition_id, :category_id, :user_id)
  end 
end
