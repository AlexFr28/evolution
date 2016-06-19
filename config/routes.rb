Rails.application.routes.draw do

  devise_for :users

  root 'tiles#index'

  resources :users, only: [:index, :show]
  resources :items_moneys, only: [:index]
  resources :accounts, except: [:show]
  resources :statements, only: [:new, :create, :show]

end
