Rails.application.routes.draw do
  resources :articles
  resources :naats
  resources :profile
  resources :events
  resources :admins
  resources :organizations
end