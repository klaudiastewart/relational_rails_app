Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'

  get '/parents', to: 'parents#index'
  get '/parents/new', to: 'parents#new'
  get '/parents/:id', to: 'parents#show'
  post '/parents', to: 'parents#create'

  get '/garages', to: 'garages#index'
  get '/garages/new', to: 'garages#new'
  get '/garages/:id', to: 'garages#show'
  post '/garages', to: 'garages#create'
  get '/garages/:id/vehicles', to: 'garage_vehicles#index'

  get '/vehicles', to: 'vehicles#index'
  get '/vehicles/:id', to: 'vehicles#show'

  get '/shops', to: 'shops#index'
  get '/shops/new', to: 'shops#new'
  get '/shops/:id', to: 'shops#show'
  get '/shops/:id/edit', to: 'shops#edit'
  get '/shops/:id/flavors', to: 'shops#pc_index'
  post '/shops/:id/flavors', to: 'shops#alphabatize', :as => :alphabatize
  post '/shops', to: 'shops#create'
  patch '/shops/:id', to: 'shops#update'

  get '/flavors', to: 'flavors#index'
  get '/flavors/:flavor_id', to: 'flavors#show'
  get '/flavors/:flavor_id/edit', to: 'flavors#edit'
  patch '/flavors/:flavor_id', to: 'flavors#update'

  get '/shops/:id/flavors/new', to: 'flavors#new'
  post '/shops/:id/flavors', to: 'shops#create'
end
