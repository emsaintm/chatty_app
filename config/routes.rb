Rails.application.routes.draw do

  get 'profiles' => 'profiles#index'
  get 'profiles/:id' => 'profiles#show', as: :profile 

  get 'scribbles/index'

  get 'scribbles/show'

  get 'scribbles/new'

  get 'scribbles/edit'

  devise_for :users

  resources :scribbles do
    resource :likes, only: [:create, :destroy]
    # resource singular for likes bc we don't need an index view and itll singularize our route
  end



  resources :relationships
  

  root 'scribbles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
