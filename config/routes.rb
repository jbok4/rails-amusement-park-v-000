Rails.application.routes.draw do
  resources :users
  resources :attractions

  root to: 'users#home'

  get '/sign_in', to: 'users#sign_in'
  get '/logout', to: 'sessions#destroy'
  post '/rides/new', to: 'rides#new'

end