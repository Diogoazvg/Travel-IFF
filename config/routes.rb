Rails.application.routes.draw do
  resources :bus_companies
  resources :vehicles
  resources :travels
  resources :events
  resources :students
  resources :drivers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
