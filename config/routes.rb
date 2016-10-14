Rails.application.routes.draw do
  get 'pages/home'

  devise_for :users

  root to: 'pages#home'

  resources :profiles, only: [:new, :edit, :create, :update]
  resources :products
  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
