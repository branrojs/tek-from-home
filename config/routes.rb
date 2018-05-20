Rails.application.routes.draw do
 
  
  resources :teams
  resources :cases
  resources :positions
  devise_for :users
   root 'welcome#index'

 
end
