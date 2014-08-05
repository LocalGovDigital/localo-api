Rails.application.routes.draw do
  apipie
  get 'waste_collections/index'

  get 'waste_collections/show'

  root to: 'visitors#index'

  mount Waste::Engine => '/waste'
end
