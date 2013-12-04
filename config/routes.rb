MetubeCohort3::Application.routes.draw do

  root 'videos#show_all'
  get '/videos' => 'videos#show_all'
  get '/videos/new' => 'videos#new', as: 'new_video'
  get '/videos/:id' => 'videos#show', as: 'video'
  get '/videos/:id/edit' => 'videos#edit', as: 'edit_video'
  post '/videos' => 'videos#create'
  put '/videos/:id' => 'videos#update'
  patch '/videos/:id' => 'videos#update'
  delete '/videos/:id' => 'videos#destroy'

end
