Rails.application.routes.draw do
  get 'private_messages/index'

  get 'conversations/index'

  devise_for :users, :path => 'accounts',
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:show]

  root to: 'pages#home'
  get '/about', to: 'pages#about'
  resources :locations do
    resources :messages do
      resources :users
    end
    resources :users do
      resources :messages
    end
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
