Rails.application.routes.draw do
  namespace :admin do
    resources :vehicles
  end
  namespace :admin do
    resources :students
  end
  namespace :admin do
    resources :people
  end
  namespace :admin do
    resources :events
  end
  namespace :admin do
    resources :drivers
  end
  namespace :admin do
    resources :bus_companies
  end
  namespace :admin do
    resources :travels
  end
  devise_for :users
  root to: "welcome#index"
  resources :bus_companies, except: [:edit]
  resources :vehicles, except: [:edit]
  resources :travels, except: [:edit]
  resources :events, except: [:edit]
  resources :students, except: [:edit]
  resources :drivers, except: [:edit]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
