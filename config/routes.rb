Rails.application.routes.draw do
  devise_for :users
  get 'spots/index'
  root 'spots#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:show]
  resources :spots, only: [:show]
end