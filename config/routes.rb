Rails.application.routes.draw do

  root "home#index"
  resources :uploads

  resources :users
  #Application receives an incoming request and
  #match it to controller action
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  resources :users, except: [:new]
   
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/ routing.html

