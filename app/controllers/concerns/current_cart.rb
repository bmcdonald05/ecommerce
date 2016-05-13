module CurrentCart

	private
		def set_cart
			@cart = Cart.find(session[:id])
			rescue ActiveRecord::RecordNotFound
			@cart = Cart.create(user_id: current_user.id)
			session[:cart_id] = @cart_id
		end
end