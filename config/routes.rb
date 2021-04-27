Rails.application.routes.draw do
  namespace :api do
    get "/blurbs" => "blurbs#random"
    post "/blurbs" => "blurbs#create"
    post "/users" => "users#create"
  end
end
