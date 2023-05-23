Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'tasks#index' # équivalent à: get '/', to: 'tasks#index'
  get '/tasks', to: 'tasks#index'

  get '/tasks/:id', to: 'tasks#show', as: 'task'

  post '/tasks', to: 'tasks#create'
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  delete '/tasks/:id', to: 'tasks#destroy', as: 'delete_task'
  patch '/tasks/:id', to: 'tasks#update'
end
