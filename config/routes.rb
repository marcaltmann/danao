Rails.application.routes.draw do
  devise_for :users
  resources :thoughts

  ActiveAdmin.routes(self)

  root to: redirect('/thoughts')
end
