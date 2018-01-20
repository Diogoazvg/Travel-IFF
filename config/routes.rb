Rails.application.routes.draw do
  resources :user_events
  namespace :admin do
    end
  namespace :admin do
    resources :vehicles
      resources :people
    resources :events
    resources :drivers
    resources :bus_companies
    resources :travels
  end
  devise_for :users
  # devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "welcome#index"
  resources :bus_companies, except: [:edit]
  resources :vehicles, except: [:edit]
  resources :travels, only: [:show, :index]
  resources :events, only: [:show, :index]
  resources :drivers, except: [:edit]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
