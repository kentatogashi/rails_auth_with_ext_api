Rails.application.routes.draw do
  root to: 'sessions#login'
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/home', to: 'home#index'
  delete '/logout', to: 'sessions#destroy'
end
