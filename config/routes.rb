Rails.application.routes.draw do

  devise_for :users

  resources :packages

  root'pages#home'

  get 'pages/home'

  get 'pages/bio'

  get 'pages/packages'

  get 'pages/merch'

  get 'pages/contact'

  get 'pages/faq'

  get 'pages/cart'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
