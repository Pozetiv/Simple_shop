Rails.application.routes.draw do
  devise_for :users
  resources :products
  root 'products#index'

  resources :order_items, only: [:create, :destroy]
end
