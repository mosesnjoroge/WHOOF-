Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  root to: "pages#home"
  resources :dogs do
    resources :bookings, only: %i[new create destroy]
  end
  # list of all user bookings
  get '/my-bookings', to: 'bookings#index', as: 'mybookings'
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
  # checkout route
  get '/checkout', to: 'pages#checkout'
  # shopping cart
  get '/shoppingcart', to: 'bookings#shoppingcart', as: 'cart'
end
