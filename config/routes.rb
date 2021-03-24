Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
# post '/parents', to: 'parents#create'

  get '/parents', to: 'parents#index'
  get '/parents/new', to: 'parents#new'
  get '/parents/:id', to: 'parents#show'
  post '/parents', to: 'parents#create'

  get '/child_table_name', to: 'child_table_name#index'
end
