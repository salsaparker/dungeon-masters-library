Rails.application.routes.draw do


  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # delete '/logout' => 'sessions#destroy'

  get '/signup' => 'admins#new'
  post '/signup' => 'admins#create'


root '/' => 'books#index'




resources :books

end
