Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #

  resources :seas
  # get '/', to: 'seas#welcome'
  # #
  # get '/seas', to: 'seas#index'
  #
  # get '/seas/new', to: 'seas#new'
  #
  # post '/seas', to: 'seas#create'
  #
  # get '/seas/:id', to: 'seas#show'
  #
  # resources :seas, only: :edit
  #
  # patch '/seas/:id', to: 'seas#update'
  #
  # delete '/seas/:id', to: 'seas#destroy'

  # resources :seas, only: [:show, :update, :destroy, :new, :edit, :create]
end
