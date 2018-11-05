Rails.application.routes.draw do
  resources :schedules
  resources :users
  resources :parking_types
  resources :vehicles
  resources :parkings
  resources :ratings
  resources :novelties
  resources :vehicle_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
