Rails.application.routes.draw do
  resources :services
  resources :expenses
  resources :addresses
  resources :jobs
  resources :clients
  devise_for :users
  resources :users, only: [:show, :index]
  root to: 'home#index'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
