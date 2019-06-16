Rails.application.routes.draw do
  resources :thoughts

  ActiveAdmin.routes(self)

  get '/', to: redirect('/thoughts')

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/register', to: 'users#new'
  post '/register', to: 'users#create'
end
