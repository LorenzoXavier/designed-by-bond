Rails.application.routes.draw do
  get '/contact', to: "pages#contact"
  get '/privacy', to: "pages#privacy"
  get '/environmental', to: "pages#environmental"
  get '/terms_of_use', to: "pages#terms_of_use"
  get '/cookies', to: "pages#cookies"
  get '/about_us', to: "pages#about_us"
  get '/testomonials', to: "pages#testomonials"
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
