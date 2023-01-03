Rails.application.routes.draw do

  # get "log_in", to: "users#login"
  root "main#index"
  
  get "userupdate", to: "userupdates#edit", as: :edit_userupdate
  post "userupdate", to: "userupdates#edit"
  patch "userupdate", to: "userupdates#update"
  
  get "about", to: "main#index"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  resources :users
  # resources :sessions
# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
