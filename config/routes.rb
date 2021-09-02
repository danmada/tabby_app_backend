Rails.application.routes.draw do
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :drinks, only: [:index]
  resources :tabs, only: [:index, :show, :create, :update]
  resources :bars, onyl: [:index, :show, :create]
  resources :customers, only: [:show, :create]
  
end
