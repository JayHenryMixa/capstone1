Rails.application.routes.draw do


  devise_for :users
  root 'users#index'

  get '/users' => 'users#index'
  get '/users/new' => 'users#new'
  post 'users' => 'users#create'

  get '/users/:id' => 'users#show'

  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'

end
