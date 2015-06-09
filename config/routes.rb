Rails.application.routes.draw do

root 'books#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/signup' => 'admins#new'
  post '/signup' => 'admins#create'

resources :books

end
