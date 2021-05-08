Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do 
      post "/users", to: "users#create"
      get '/users/:user_id', to: 'users#show'
      get "/users", to: "users#index"
      post "/login", to: "sessions#create"
      post "/logout", to: "sessions#destroy"
      get "/logged_in", to: "sessions#is_logged_in?"
    end
  end
  

  resources :users, only: [:create, :index, :show] 
  resources :cart_items, only: [:create, :show, :destroy]

  

  resources :items, only: [:show, :index, :destroy, :create]


  resources :carts
  resources :reviews 
end
