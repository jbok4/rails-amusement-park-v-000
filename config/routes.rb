Rails.application.routes.draw do
  resources :users
  resources :attractions

  root to: 'users#home'


end