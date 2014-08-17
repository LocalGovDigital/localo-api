Waste::Engine.routes.draw do

  resources :properties

  resources :rounds

  resources :items
  resources :types
  resources :containers
  resources :collections

  namespace :api, :defaults => {:formats => :json} do
    resources :items
    resources :types
    resources :containers
    resources :collections
  end
end
