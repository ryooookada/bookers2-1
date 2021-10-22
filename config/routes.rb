Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  
  resources :books, only: [:edit, :create, :index, :show, :destroy, :update]
  resources :users, only: [:edit, :create, :index, :show, :destroy, :update]
  
end
