Rails.application.routes.draw do
 
  resources :posts do
    resources :comments
  end

  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
  
  resources :users
  resources :sessions
  

  root "posts#index"
end
