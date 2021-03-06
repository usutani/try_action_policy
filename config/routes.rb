Rails.application.routes.draw do
  resources :posts
  resources :users
  resources :users, only: %i[index show]
  resources :posts do
    resources :comments, only: %i[create destroy]
  end
  root to: 'users#index'
end
