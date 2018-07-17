Rails.application.routes.draw do
  get 'list/index'

  resources :influencers, only: [:index]
  resources :starred_influencers, only: [:index, :create, :destroy]

  root 'list#index'
end
