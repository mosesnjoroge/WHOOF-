Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :dogs do
    resources :bookings, only: %i[new create]
  end
  # list of all user bookings
  get '/my-bookings', to: 'bookings#index', as: 'mybookings'
  # list a booking
  get '/my-bookings/:id', to: 'bookings#show', as: 'mybooking'
  # list all dogs(owner)
  get '/my-dogs', to: 'dogs#index', as: 'mydogs'
  # list a dog(owner)
  get '/my-dogs/:id', to: 'dogs#show', as: 'mydog'
  # update dog posting
  patch '/my-dogs/:id', to: 'dogs#update'
  # checkout route
  get '/checkout', to: 'pages#checkout'
end
