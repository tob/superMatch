Rails.application.routes.draw do
  devise_for :users

    root 'users#index'
    resources :users
    resources :pairs
    resources :days

    namespace :api do
      resources :days do
          resources :pairs
        end
      resources :users
    end
end
