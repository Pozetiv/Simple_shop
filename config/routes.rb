Rails.application.routes.draw do
  devise_for :users
  resources :products
  root 'products#index'

  resources :order_items, only: [:create, :destroy] do
    resources :addresses, extend: [:index, :destroy]
  end
  resource :carts, only: [:show]

  resources :addresses, extend: [:index, :destroy]

end
