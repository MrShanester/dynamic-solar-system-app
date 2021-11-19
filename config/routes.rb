Rails.application.routes.draw do
  # Planet Routes
  get "/planets" => "planets#index"
  get "/planets/:id" => "planets#show"
  post "/planets" => "planets#create"
  patch "/planets" => "planets#update"
  delete "/planets" => "planets#destroy"

  # System Routes
  get "/systems" => "systems#index"
  get "/systems/:id" => "systems#show"
  post "/systems" => "systems#create"
  patch "/systems" => "systems#update"
  delete "/systems" => "systems#destroy"

  # User Routes
  post "/users" => "users#create"
  
  # Session Routes
  post "/sessions" => "sessions#create"
end
