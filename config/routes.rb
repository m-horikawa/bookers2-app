Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }

  root to: 'homes#top'
  get 'home/about', to: 'homes#about'

  resources :books
  resources :users, only:  [:index, :show, :edit, :update]
end
