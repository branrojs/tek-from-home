Rails.application.routes.draw do
 
  
  resources :teams
  resources :cases
  resources :positions
  resources :user, only: [:show]
  devise_for :users
   root 'welcome#index'

 
end
