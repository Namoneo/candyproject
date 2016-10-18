Rails.application.routes.draw do

  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/service'
  get 'pages/dutch'

  devise_for :users

  root to: 'products#index'

  resources :profiles, only: [:new, :edit, :create, :update]
  resources :products
  resources :photos
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
