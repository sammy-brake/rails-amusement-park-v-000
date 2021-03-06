Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#welcome'

  resources :users, only: [:new, :show, :create]
  
  resources :attractions 
  get '/signin', to: 'session#new'
  post '/signin', to: 'session#create'
  get '/logout', to: 'session#destroy'
  post '/rides', to: 'rides#create'





end
