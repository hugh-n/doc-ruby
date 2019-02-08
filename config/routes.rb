Rails.application.routes.draw do
  devise_for :users
  resources :contents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # DEFAULT HOME PAGE 
  root 'posts#index'
  resources :posts

  # SIGN UP ROUTE
  #get  '/signup',  to: 'users#new'
  #post '/signup',  to: 'users#create'

  # LOG IN ROUTE
  #get    '/login',   to: 'sessions#new'
  #post   '/login',   to: 'sessions#create'
  #delete '/logout',  to: 'sessions#destroy'

  resources :users
  

  # CONTENT
  get    '/board', to: 'contents#index'
  resources :contents
end