Rails.application.routes.draw do
  devise_for :users

    root 'users#index'
    resources :users
    resources :pairs
    resources :days

    namespace :api do
      resources :pairs
      resources :users
    end
end
