Rails.application.routes.draw do
  resources :lunches, only: %i[index show new create destroy]
end
