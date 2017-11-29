Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  get 'private_messages/index'

  get '/inbox', to: 'conversations#index'

  get "users/favorites"

  post '/locations/:id/favorite',to: "locations#favorited"

  delete '/locations/:id/unfavorite', to: "locations#unfavorite"


  ActiveAdmin.routes(self)

  devise_for :users, controllers: { sessions: 'sessions', omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users, only: [:show] do
   resources :bookings, only: [:index]
  end

  resources :bookings, only: [:show, :create, :new] do
    resources :payments, only: [:new, :create, :success] do

    end
    get 'success', :on => :member
  end



  root to: 'pages#landing'

  get '/about', to: 'pages#about'

  resources :locations do
    resources :messages
  end

  resources :locations, only: [:show, :new, :index, :create, :update] do
    resources :bookings, only: [:create, :new]
  end

  resources :conversations, only: [:index, :create, :destroy ] do
    resources :private_messages, only: [:index, :create]
  end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
