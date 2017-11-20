Rails.application.routes.draw do
  devise_for :users, :path => 'accounts'
  resources :users, only: [:show]
  root to: 'pages#home'
  resources :locations
  resources :users do
    resources :locations, only: [:show, :index]

  resources :bookings
    end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
