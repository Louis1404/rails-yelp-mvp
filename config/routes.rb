Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
  root to: 'restaurants#index'

  namespace :admin do
    resources :restaurants, only: [:index, :show, :update, :edit, :destroy]
  end
end
