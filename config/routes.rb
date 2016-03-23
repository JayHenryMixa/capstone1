Rails.application.routes.draw do


  devise_for :users
  root 'profiles#home'

  get '/profiles/home' => 'profiles#home'
  get '/profiles' => 'profiles#index'
  get '/profiles/admin' => 'profiles#admin'
  get '/profiles/:id' => 'profiles#show'
  get '/profiles/:id/edit' => 'profiles#edit'
  patch '/profiles/:id' => 'profiles#update'
  delete '/profiles/:id' => 'profiles#destroy'

  get '/items' => 'items#index'
  get '/items/new' => 'items#new'
  post '/items' => 'items#create'
  get '/items/:id' => 'items#show'
  get '/items/:id/edit' => 'items#edit'
  patch '/items/:id' => 'items#update'
  delete '/items/:id' => 'items#destroy'
  
  post '/search' => "items#search"
  

  get '/sold_tos/new' => 'sold_tos#new'
  post '/sold_tos' => 'sold_tos#create'



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

  get '/holders' => 'holders#index'
  get '/holders/new' => "holders#new"
  post '/holders' => "holders#create"
  get '/holders/pending' => 'holders#pending'
  get '/holders/:id' => "holders#show"
  get '/holders/:id/edit' => "holders#edit"
  patch '/holders/:id' => "holders#update"
  delete '/holders/:id' => 'holders#destroy'

  get '/images' => 'images#index'
  get '/images/new' => "images#new"
  post '/images' => "images#create"
  get '/images/:id' => "images#show"
  get '/images/:id/edit' => "images#edit"
  patch '/images/:id' => "images#update"
  delete '/images/:id' => 'images#destroy'

  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new'
  post '/articles' => 'articles#create'
  get '/articles/:id' => 'articles#show'

  get '/videos' => 'videos#index'
  get '/videos/new' => 'videos#new'
  post '/videos' => 'videos#create'

end
