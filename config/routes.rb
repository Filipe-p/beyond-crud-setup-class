Rails.application.routes.draw do
  resources :restaurants do

    collection do
      #get 'restaurants/top'
      get 'top', to: 'restaurants#top'
    end

    member do
      #get 'restaurants/:id/top'
      get 'chef', to: 'restaurants#chef'
    end

    resources :reviews, only: [:new, :create]
  end
    resources :reviews, only: [ :show, :edit, :update, :destroy ]

  namespace :admin do
    resources :restaurants, only: [:index]
  end
end
