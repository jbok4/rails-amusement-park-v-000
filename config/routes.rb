Rails.application.routes.draw do

  root to: 'users#index' 

  resources :users
  resources :attractions
  resources :rides

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  post "/rides/new", to: "rides#create"


end