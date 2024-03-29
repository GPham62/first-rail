Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end
  resources :tags
  root to: 'articles#index'
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy]

  get 'login' => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
end
