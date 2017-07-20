Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'users#index'
    resources :users
    resources :pairs
    resources :days

# Tobia, I deleted everything about Period, hahaha
    namespace :api do
      resources :days do
          resources :pairs
        end
      resources :users
    end
end
