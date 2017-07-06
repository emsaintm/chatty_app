Rails.application.routes.draw do
  resources :chits

  devise_for :users

  root 'chits#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
