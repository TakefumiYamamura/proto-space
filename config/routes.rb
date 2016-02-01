Rails.application.routes.draw do
  root 'prototypes#index'
  resources :users,      only: [:show]
  resources :prototypes, only: [:new, :create, :show, :index] do
    collection do
      get 'newest'
      get 'popular'
    end
  end
  resources :comments,   only: [:new, :create]
  resources :tags,       only: [:index, :show], param: :tag_name
  resources :likes,      only: [:create, :destroy]

end
