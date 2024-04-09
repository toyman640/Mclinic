Rails.application.routes.draw do
  # get 'staff_session/new'
  # get 'staff_session/create'
  # get 'staff/index'
  # get 'staff/new'
  # get 'staff/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "staff_sessions#new"
  resources :staffs, only: [:index, :new, :create]
  resources :staff_sessions, only: [:new, :create]
end
