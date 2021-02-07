Rails.application.routes.draw do
  root to: 'placas#index'
  resources :placas
end
