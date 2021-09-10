Rails.application.routes.draw do
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :drinks, only: [:index]
  resources :tabs, only: [:index, :show, :create, :update]
  resources :bars, onyl: [:index, :show, :create]
  resources :customers, only: [:create]
  resources :sessions, only: [:index]
  resources :bar_sessions, only: [:index, :create]


  post "/login", to: "sessions#create"
  get "/me", to: "customers#show"
  delete "/logout", to: "sessions#destroy"

  post "/barlogin", to: "bar_sessions#create"
  get "/barme", to: "bars#show"
  delete "/barlogout", to: "sessions#destroy"
  
end
