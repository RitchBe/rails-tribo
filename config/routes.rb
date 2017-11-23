Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  mount Attachinary::Engine => "/attachinary"
  devise_for :users, :path => 'accounts',
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:show]
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/index', to: 'pages#index'
  resources :locations
  resources :users do
    resources :locations, only: [:show, :index, :create, :update]

  resources :bookings
    end
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
