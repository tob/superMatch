Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'users#index'
    resources :users

    resources :periods do
      resources :days do
        resources :pairs
      end
    end



    namespace :api do
      resources :users
    end



end
