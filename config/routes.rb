Rails.application.routes.draw do
  get 'cards/new'
  devise_for :users
  root to: 'items#index'
  
  resources :users, only: [:show, :update]
  resources :cards, only: [:new, :create]
end
