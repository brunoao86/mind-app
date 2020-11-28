Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'home', to: 'home#index'

  resources :contents
end
