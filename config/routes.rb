Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:index, :show]
  # resources :users, except: [:new, :create, :destroy]
  root 'users#index'

end
