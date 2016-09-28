Rails.application.routes.draw do

  root to: 'users#home' 

  resources :users
  resources :sessions, only: [:create, :delete]
  resources :attractions
  resources :rides

  get "application/index"
  get "/signin", to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"


end