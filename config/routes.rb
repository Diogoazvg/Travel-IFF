Rails.application.routes.draw do
  namespace :admin do
    resources :student_events
  end
  namespace :admin do
    resources :vehicles
    resources :students
    resources :people
    resources :events
    resources :drivers
    resources :bus_companies
    resources :travels
  end
  devise_for :users
  root to: "welcome#index"
  resources :bus_companies, except: [:edit]
  resources :vehicles, except: [:edit]
  resources :travels, only: [:show, :index]
  resources :events, only: [:show, :index]
  resources :students, only: [:show, :index]
  resources :drivers, except: [:edit]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
