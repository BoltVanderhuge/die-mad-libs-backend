Rails.application.routes.draw do

  get '/text_entries', to: 'text_entries#index'
  post '/text_entries', to: 'text_entries#create'
  get '/text_entries/:id/user', to: 'text_entries#other_stories'
  get '/text_entries/:id', to: 'text_entries#show'
  delete '/text_entries/:id', to: 'text_entries#destroy'
  
  get '/users', to: 'users#index'
  post '/users', to: 'users#create'
  get '/users/:id/text', to: 'users#text_entries'
  get '/users/:id/:text_id', to: 'users#get_saved_story'
  get '/users/:name/:age/user', to: 'users#get_user'
  get '/users/:id', to: 'users#show'
  delete '/users/:id', to: 'users#destroy'

  get 'mad_libs', to: 'mad_libs#index'
  get 'mad_libs/:id', to: 'mad_libs#show'

end
