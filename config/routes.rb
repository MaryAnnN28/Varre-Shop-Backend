Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do 
      post "/users", to: "users#create"
      get "/users", to: "users#index"
      post "/login", to: "auth#login"
      get "/authlogin", to: "users#autologin"
    end
  end
  

  resources :users, only: [:create, :index, :show]
  resources :carts
  resources :items
  resources :cart_items
  resources :reviews 
end
