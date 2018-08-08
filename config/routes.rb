Rails.application.routes.draw do
  devise_for :users
  resources :products
  root 'products#index'

  resources :order_items, only: [:create, :destroy] do
    resources :addresses, except: [:index, :destroy]
  end

  resource :carts, only: [:show]

  resources :addresses, except: [:index, :destroy]

  get '/support', to: 'static_pages#support_page'
  resources :messages, only: [:create, :show]

end
