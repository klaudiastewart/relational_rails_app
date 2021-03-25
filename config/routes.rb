Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
# post '/shops', to: 'shops#create'

  get '/shops', to: 'shops#index'
  get '/shops/new', to: 'shops#new'
  get '/shops/:id', to: 'shops#show'
  get '/shops/:id/child_table_name', to: 'shops#show_child'
  post '/shops', to: 'shops#create'

  get '/child_table_name', to: 'child_table_name#index'
  get '/child_table_name/:id', to: 'child_table_name#show'
end
