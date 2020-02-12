Rails.application.routes.draw do
  get 'comments/index'
  devise_for :users
  root 'naats#index'
  
  resources :naats
  # get '/lyireus_naats' => 'landing_pages#lyireus_naats'

  devise_for :models

  namespace :admin do 
    get 'dashborad'=>'dashborad#index'
    resources :naats
    resources :users
    resources :events
    resources :admins
    resources :organizations
    resources :roles
  end


  resources :comments do
    resources :comments
  end



end