Rails.application.routes.draw do

  root to: 'application#home' 
   
  namespace :api do
   namespace :v1 do
 
     resources :cars 
     resources :bookings
     
 
     resources :users, only: [:index, :create]
     post '/login', to: 'authentication#login'
     get '/auto_login', to: 'auth#auto_login'
     get '/user_is_authorized', to: 'auth#user_is_authorized'
     post '/signup', to: 'users#create' 
     
     end
   end
 end
