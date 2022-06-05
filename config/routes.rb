Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :items
  devise_for :users, controllers: {
    registrations: "registrations"
  }
  root 'items#index'
  get '/checkout', to: 'checkouts#show'
  get '/billing', to: 'billing#show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
