Rails.application.routes.draw do

  root 'pages#home'

  # Sign up routing 
  get '/signup', to: 'users#new'
  # Other user actions
  resources :users, except: [:new]
  
  # Login/Logout routing 
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # Other session actions
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
