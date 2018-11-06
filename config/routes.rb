Rails.application.routes.draw do
  # CRUD

  # resources :tasks, except: [:destroy]

  # CREATE

  # 3. Get a form to create a new task
  get '/tasks/new', to: 'tasks#new', as: 'task_new'

  # 4. To send data to the server to create a restaurant in the DB
  post '/tasks', to: 'tasks#create'

  # READ
  # 1. List all the tasks
  get '/tasks', to: 'tasks#index', as: 'tasks_all'

  # 2. View details about a particular task
  get '/tasks/:id', to: 'tasks#show', as: 'task'

  # UPDATE

  # 5. Get a form with prefilled data about a specific restaurant
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'task_edit'

  # 6. Send data to the server to update a restaurant
  patch '/tasks/:id', to: 'tasks#update'

  # DESTROY

  # 7. Delete a restaurant
  delete '/tasks/:id', to: 'tasks#destroy', as: 'task_destroy'
end
