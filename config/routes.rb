Rails.application.routes.draw do

  namespace :admin do
    resources :restaurants #, only: [:update, :destroy]

    resources :reviews #, only: [:update, :destroy]

  end

  resources :restaurants do


    resources :reviews
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "restaurants#index"
end
