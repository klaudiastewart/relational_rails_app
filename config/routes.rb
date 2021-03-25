Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
# post '/shops', to: 'shops#create'

  get '/shops', to: 'shops#index'
  get '/shops/new', to: 'shops#new'
  get '/shops/:id', to: 'shops#show'
  get '/shops/:id/child_table_name', to: 'shops#show_child'
  post '/shops', to: 'shops#create'

  get '/flavors', to: 'flavors#index'
  get '/flavors/:id', to: 'flavors#show'
end
