Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:index, :show]
  resources :items_moneys, only: [:index]
  resources :accounts, except: [:show]
  # resources :users, except: [:new, :create, :destroy]
  root 'tiles#index'

end
