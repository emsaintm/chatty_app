Rails.application.routes.draw do

  get 'scribbles/index'

  get 'scribbles/show'

  get 'scribbles/new'

  get 'scribbles/edit'

  devise_for :users

  resources :scribbles

  root 'scribbles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
