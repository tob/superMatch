Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'users#index'
    resources :users
    resources :teams

    namespace :api do
      resources :users
      resources :teams
    end
end
