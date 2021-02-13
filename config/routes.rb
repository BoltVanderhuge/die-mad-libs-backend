Rails.application.routes.draw do

  get '/text_entries', to: 'text_entries#index'
  post '/text_entries', to: 'text_entries#create'
  get '/text_entries/:id', to: 'text_entries#show'
  get 'mad_libs', to: 'mad_libs#index'
  get 'mad_libs/:id', to: 'mad_libs#show'
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  
end
