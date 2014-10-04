Rails.application.routes.draw do
  resources :kristine_toys

  root 'kristine_toys#index'

end
