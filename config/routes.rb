Rails.application.routes.draw do

  root 'pages#index'

  # Sign up routing 
  get '/signup', to: 'users#new'
  resources :users, except: [:new]
  # resources :sessions

  # Login routing 
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
