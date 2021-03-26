Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
# post '/shops', to: 'shops#create'

  get '/shops', to: 'shops#index'
  get '/shops/new', to: 'shops#new'
  get '/shops/:id', to: 'shops#show'
  get '/shops/:id/flavors', to: 'shops#pc_index'
  post '/shops', to: 'shops#create'
  # post '/shops/:shop_id/flavors', to: 'shops#create'

  # get '/flavors', to: 'flavors#index'

  get '/shops/:id/flavors/new', to: 'flavors#new'
  # get '/shops/:id/flavors/:flavor_id', to: 'flavors#show'
  post '/shops/:id/flavors', to: 'flavors#create'
end
