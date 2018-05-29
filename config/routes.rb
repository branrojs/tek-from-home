Rails.application.routes.draw do
 
  
  resources :teams
  resources :cases
  resources :positions
  devise_for :users, :controllers => { :registrations => "user/registrations" }
   root 'welcome#index'
   
   get 'myteam', to: 'mywork#myteams'
    get 'mycases', to: 'mywork#show'
 
end
