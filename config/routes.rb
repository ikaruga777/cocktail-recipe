Rails.application.routes.draw do
  resources :lunches, only: %i(index show)
  resources :user, only: %i(show)
end
