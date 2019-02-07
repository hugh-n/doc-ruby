Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # DEFAULT HOME PAGE 
  root 'posts#index'
  get 'home' => 'posts#index'

  # LOG IN MODULE
  get 'login' => 'pages#login'
  get 'register' => 'pages#register'

  # USER ACCOUNT

  resources :posts
end
