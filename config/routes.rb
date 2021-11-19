Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/planets" => "planets#index"
  get "/planets/:id" => "planets#show"
  post "/planets" => "planets#create"
  patch "/planets" => "planets#update"
  delete "/planets" => "planets#destroy"
  
end
