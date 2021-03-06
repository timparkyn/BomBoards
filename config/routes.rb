Rails.application.routes.draw do

  get 'events/create'

  get 'events/show'

  get 'events/update'

  get 'events/destroy'

  devise_for :users

  resources :friendships, only: [:create, :update, :destroy]

  get 'games/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :games, :comments, :votes, :ownerships, :tags

  post '/users', to: 'user#add_game'

  delete '/users', to: 'user#remove_game'
  post '/users', to: 'user#add_friend'

  root 'games#index'

end
