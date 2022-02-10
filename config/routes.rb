Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :games, only: [ :index, :show, :new, :create ] do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [ :index, :show, :edit, :update ]
  resources :pages, only: [ :index ]
  get 'profile', to: 'pages#profile'
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
