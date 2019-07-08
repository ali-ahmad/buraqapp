Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  
  get 'dashborad'=>'dashborad#index'
  devise_for :models
  resources :naats
  resources :users
  resources :events
  resources :admins
  resources :organizations
  resources :roles
end