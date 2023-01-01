Rails.application.routes.draw do

  # get "log_in", to: "users#login"
  root "main#index"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  # resources :sessions
  resources :users
# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
