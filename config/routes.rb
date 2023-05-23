Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # List all tasks
  get '/tasks', to: 'tasks#index'

  # 2. receive the form submission
  post '/tasks', to: 'tasks#create'

  # Create a task
  # 1. see the form
  get '/tasks/new', to: 'tasks#new', as: :new_task

  # Update a task
  # 1. see the form
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  patch '/tasks/:id', to: 'tasks#update'

  # See one task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Delete a task
  delete '/tasks/:id', to: 'tasks#destroy'
end
