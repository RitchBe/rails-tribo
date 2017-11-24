Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  get 'private_messages/index'

  get 'conversations/index'


  ActiveAdmin.routes(self)

  devise_for :users, :controllers => {sessions: 'sessions',
   omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users, only: [:show]

  root to: 'pages#landing'

  get '/about', to: 'pages#about'
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
