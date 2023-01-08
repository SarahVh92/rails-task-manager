Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # list all tasks
  get 'tasks', to: 'tasks#index'

  # create a new task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # show 1 task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
