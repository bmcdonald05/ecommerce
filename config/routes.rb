Rails.application.routes.draw do

	root "products#index"
  devise_for :users
  resources :profiles, only: :show
  resources :products
  resources :line_items, only: [:destroy, :create]
  resources :carts

end
