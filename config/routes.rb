Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'users#index'
    resources :users
    resources :pairs
    resources :periods
    resources :days





    namespace :api do
      resources :periods do
        resources :days do
          resources :pairs
        end
      end
      resources :users
    end
end
