Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]
  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new'
  # get 'lists/:id', to: 'lists#show', as: :list
  # post 'lists', to: 'lists#create'
  # get 'lists/list:id/bookmarks/new', to: 'bookmarks#new'
  # post 'bookmarks', to: 'bookmarks#create'
  # get 'bookmarks/:id', to: 'bookmarks#show', as: :bookmark
  # delete 'bookmarks/:id', to: 'bookmarks#destroy'
end
