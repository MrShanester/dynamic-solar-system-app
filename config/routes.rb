Rails.application.routes.draw do
  # Planet Routes
  get "/planets/index/:id" => "planets#index"
  get "/planets/:id" => "planets#show"
  post "/planets" => "planets#create"
  patch "/planets/:id" => "planets#update"
  delete "/planets/:id" => "planets#destroy"

  # System Routes
  get "/systems" => "systems#index"
  get "/systems/:id" => "systems#show"
  get "/name" => "systems#name"
  post "/systems" => "systems#create"
  patch "/systems/:id" => "systems#update"
  delete "/systems/:id" => "systems#destroy"

  # User Routes
  post "/users" => "users#create"
  
  # Session Routes
  post "/sessions" => "sessions#create"
end
