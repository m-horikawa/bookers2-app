Rails.application.routes.draw do
  # get 'users/show'
  devise_for :users
  root to: 'books#index'
  resources :books
  resources :users, only:  [:show, :edit, :update]
end
