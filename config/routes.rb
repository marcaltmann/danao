Rails.application.routes.draw do
  resources :thoughts

  ActiveAdmin.routes(self)
end
