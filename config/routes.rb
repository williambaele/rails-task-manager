Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  get "tasks", to: "tasks#tasks"
  get "/tasks/:id", to: "tasks#show", as: :task
  get "new", to: "tasks#new"
  post "/tasks", to: "tasks#create"
  get "/task/:id/edit", to: "task#edit", as: :edit
  patch "/task/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy"

end
