Rails.application.routes.draw do
  resources :categories
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/service'
  get 'pages/dutch'

  devise_for :users

  root to: 'pages#home'

  resources :profiles, only: [:new, :edit, :create, :update]
  resources :products
  resources :pagess

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
