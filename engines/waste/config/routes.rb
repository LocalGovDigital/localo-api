Waste::Engine.routes.draw do
  resources :collections

  resources :items

  resources :containers

  resources :types

end
