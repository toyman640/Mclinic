Rails.application.routes.draw do
  get 'patients/index'
  get 'patients/new'
  get 'patients/create'
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
  resources :patients, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  delete '/logout', to: 'staff_sessions#destroy'
  get 'login', to: 'staff_sessions#new'
end
