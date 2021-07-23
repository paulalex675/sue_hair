Rails.application.routes.draw do
  resources :expenses
  resources :addresses
  resources :jobs
  resources :clients
  devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_for :admins, controllers: { sessions: 'admins/sessions' }

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
