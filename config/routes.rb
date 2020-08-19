Rails.application.routes.draw do
  resources :airports, only: [:create]
  resources :flights, only: [:index, :create]
  resources :bookings, only: [:new, :create, :show]
  root 'flights#index'
end
