Rails.application.routes.draw do
  get 'hangouts/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'hangouts#index'
  resources :messages, only: [:create]

  
end
