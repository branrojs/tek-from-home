Rails.application.routes.draw do
 
  
  resources :teams
  resources :cases
  resources :positions
  resources :mywork, only: [:show]
  devise_for :users
   root 'welcome#index'

 
end
