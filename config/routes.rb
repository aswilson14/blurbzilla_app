Rails.application.routes.draw do
  namespace :api do
    get "/blurbs" => "blurbs#random"
    post "/blurbs" => "blurbs#create"
    delete "/blurbs/:id" => "blurbs#destroy"
    
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
end
