Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
# post '/parents', to: 'parents#create'

  get '/parents', to: 'parents#index'
  get '/parents/new', to: 'parents#new'
  get '/parents/:id', to: 'parents#show'
  get '/parents/:id/child_table_name', to: 'parents#show_child'
  post '/parents', to: 'parents#create'

  get '/child_table_name', to: 'child_table_name#index'
  get '/child_table_name/:id', to: 'child_table_name#show'
end
