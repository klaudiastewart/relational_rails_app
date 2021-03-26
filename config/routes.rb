Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
# post '/shops', to: 'shops#create'

  get '/shops', to: 'shops#index'
  get '/shops/new', to: 'shops#new'
  get '/shops/:id', to: 'shops#show'
  get '/shops/:id/flavors', to: 'shops#show_flavors'
  post '/shops', to: 'shops#create'
  # post '/shops/:id/flavors', to: 'shops #create'

  get '/flavors', to: 'flavors#index'
  get '/flavors/:id', to: 'flavors#show'
end
