MetubeCohort3::Application.routes.draw do

  root 'videos#index'
  resources :videos
  get '/users' => 'users#index'
  get '/users/new' => 'users#new', as: 'new_user'
  get '/users/:first_name' => 'users#show', as: 'user'
  get '/users/:first_name/edit' => 'users#edit', as: 'edit_user'
  post '/users' => 'users#create'
  put '/users/:first_name' => 'users#update'
  patch '/users/:first_name' => 'users#update'
  delete '/users/:first_name' => 'users#destroy'

end
