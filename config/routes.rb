Rails.application.routes.draw do
  get "shops" => "shops#index"
  get "shops/:id" => "shops#show"
  post "shops" => "shops#create"
  patch "shops/:id" => "shops#update"
  delete "shops/:id" => "shops#delete"
end
