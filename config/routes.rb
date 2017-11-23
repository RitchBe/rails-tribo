Rails.application.routes.draw do

  get 'private_messages/index'

  get 'conversations/index'


  ActiveAdmin.routes(self)
  mount Attachinary::Engine => "/attachinary"

  devise_for :users, :path => 'accounts',
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:show]

  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/index', to: 'pages#index'

  resources :locations do
    resources :messages
  end

  resources :users do
    resources :locations, only: [:show, :index, :create, :update]

  resources :bookings
    end


    resources :conversations, only: [:index, :create] do
      resources :private_messages, only: [:index, :create]
    end
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
