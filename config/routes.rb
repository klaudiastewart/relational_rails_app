Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
# post '/parents', to: 'parents#create'

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
end
