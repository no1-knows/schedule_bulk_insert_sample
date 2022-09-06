Rails.application.routes.draw do
  resources :schedule_users
  resources :schedules
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "schedules#index"
end
