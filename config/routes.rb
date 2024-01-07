Rails.application.routes.draw do
  devise_for :users
  get 'welcomes/index'
  root 'welcomes#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:show]
  resources :spots, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end