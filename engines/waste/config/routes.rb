Waste::Engine.routes.draw do

  resources :properties

  resources :items
  resources :types
  resources :containers
  resources :collections
  resources :rounds

  namespace :api, :defaults => {:formats => :json} do
    resources :items
    resources :types
    resources :containers
    resources :collections
    resources :rounds
  end
end
