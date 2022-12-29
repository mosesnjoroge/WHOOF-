Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  root to: "pages#home"
  resources :dogs do
    resources :bookings, only: %i[new create]
  end
  # list of all user bookings
  get '/my-bookings', to: 'bookings#index', as: 'mycart'

  # list a booking
  get '/my-bookings/:id', to: 'bookings#show', as: 'mybooking'

  # list all dogs(owner)
  get '/my-dogs', to: 'dogs#mydogs', as: 'mydogs'

  # list a dog(owner)
  get '/my-dogs/:id', to: 'dogs#show', as: 'mydog'

  # remove your dog from website
  delete '/my-dogs/:id', to: "dogs#destroy", as: 'removedog'

  # update dog posting
  patch '/my-dogs/:id', to: 'dogs#update'

  #remove your booking
  resources :bookings, only: [:destroy]
end
