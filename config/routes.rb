Rails.application.routes.draw do


  devise_for :users
  root 'users#index'

  get '/users' => 'users#index'
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'
  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'user#destroy'

  get '/items' => 'items#index'
  get '/items/new' => 'items#new'
  post '/items' => 'items#create'
  get '/items/:id' => 'items#show'

  get '/items/:id/edit' => 'items#edit'
  patch '/items/:id' => 'items#update'
  
  delete '/items/:id' => 'items#destroy'

  get '/requests' => 'requests#index'
  get '/requests/new' => 'requests#new'
  post '/requests' => 'requests#create'
  get '/requests/:id' => 'requests#show'
  get '/requests/:id/edit' => 'requests#edit'
  patch '/requests/:id' => 'requests#update'
  delete '/requests/:id' => 'requests#destroy'

  get '/specimens' => 'specimens#index'
  get '/specimens/new' => 'specimens#new'
  post '/specimens' => 'specimens#create'
  get '/specimens/:id' => 'specimens#show'
  get '/specimens/:id/:edit' => 'specimens#edit'
  patch '/specimens/:id' => 'specimens#update'
  delete '/specimens/:id' => 'specimens#destroy'

  get '/lineage_keys' => 'lineage_keys#index'
  #need to complete lineage key

end
