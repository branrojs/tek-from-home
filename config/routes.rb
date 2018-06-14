Rails.application.routes.draw do
 
  
  resources :teams
  resources :cases
  resources :positions
  devise_for :users, :controllers => { :registrations => "user/registrations" } , :path_prefix => 'my'
  root 'welcome#index' 
  resources :user, :only => [:edit, :update]
   
  get 'myteam', to: 'mywork#myteams'
  get 'mycases', to: 'mywork#show'
  get 'alluser', to: 'mywork#alluser'
  post 'update_status', to: 'welcome#update_status'
 
end
