Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :cars
      resources :users
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
  # Defines the root path route ("/")
  # root "articles#index"
end
