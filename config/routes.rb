Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :dogs do
    resources :bookings, except: %i[destroy]
  end
  resources :bookings, only: %i[destroy]
  # get 'bookings/index'
  # get 'bookings/new'
  # get 'bookings/show'
  # get 'bookings/edit'
  # get 'bookings/destroy'
  # get 'dogs/index'
  # get 'dogs/new'
  # get 'dogs/show'
  # get 'dogs/update'
  # get 'dogs/destroy'
end
