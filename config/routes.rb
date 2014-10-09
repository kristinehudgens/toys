Rails.application.routes.draw do
  resources :categories

  resources :kristine_toys

  root 'kristine_toys#index'

end
