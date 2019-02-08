Rails.application.routes.draw do
  resources :contents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # DEFAULT HOME PAGE 
  root 'users#new'

  # SIGN UP ROUTE
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  # LOG IN ROUTE
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :posts

  # CONTENT
  get    '/board',   to: 'contents#index'
  resources :contents
end