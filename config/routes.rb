Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
# post '/shops', to: 'shops#create'

  get '/shops', to: 'shops#index'
  get '/shops/new', to: 'shops#new'
  get '/shops/:shop_id', to: 'shops#show'
  get '/shops/:shop_id/flavors', to: 'shops#show_flavors'
  post '/shops', to: 'shops#create'
  # post '/shops/:shop_id/flavors', to: 'shops #create'

  get '/flavors', to: 'flavors#index'
  get '/flavors/new', to: 'flavors#new'
  get '/flavors/:flavor_id', to: 'flavors#show'
  post '/flavors', to: 'flavors#create'
end
