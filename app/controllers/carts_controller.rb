class CartsController < ApplicationController
	before_action :set_cart, only: [:show, :edit, :update, :destroy]

	def show
		@cart = Cart.find(params[:id])
		unless current_user.id == @cart.user_id
			flash[:notice] = "You don't have acces to that order!"
			redirect_to root_path
		end
	end
	def new
		@cart = Cart.new
	end
	def edit
	end
	def create
		@cart = Cart.new(cart_params)
		respond_to do |format|
			if @cart.save
				 format.html {redirect_to @cart, notice: "Cart was successfully created."} 
			else
				format.html {render :new}
			end
		end
	end
	def destroy
		@cart = Cart.find(params[:id])
		@cart.destroy if @cart.id == session[:cart_id]
		session[:cart_id] = nil
		respond_to do |format|
			format.html {redirect_to products_path, notice: "Your item was successfully deleted."}
		end
	end
	def update
		respond_to do |format|
			if @cart.update(cart_params)
				format.html {redirect_to @cart, notice: "Cart was successfully updated."}
			else
				format.html {render :edit}
			end
		end
	end

	private
	def set_cart
		@cart = Cart.find(params[:id])
	end
	def cart_params
		params.require(:cart).permit(:user_id)
	end
end
