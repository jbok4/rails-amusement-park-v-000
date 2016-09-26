Rails.application.routes.draw do
  resources :users
  resources :attractions

  root to: 'users#home'

  get '/signin', to: 'users#sign_in'


end