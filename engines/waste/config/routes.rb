Waste::Engine.routes.draw do
  resources :collections

  resources :items

  resources :containers

  resources :types

  namespace :api, :defaults => {:formats => :json} do
    resources :containers
  end
end
