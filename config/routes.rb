Rails.application.routes.draw do
	
  # ROOT FOR USERS: LOG IN LOG OUT SIGN UP
  devise_for :users
  resources :users

  # BOARD PAGE
  root 'contents#index'
  resources :contents

end