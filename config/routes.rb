Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'user_index', to: 'pages#user_index'
  get 'user_settings', to: 'pages#user_settings'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :courses do
    resources :subtopics, only: [:show, :new, :create, :edit, :update ] do
      resources :lessons, only: [:show, :new, :create, :edit, :update] do
        resources :bookings, only: :create
      end
    end
  end
  resources :subtopics, only: :destroy
  resources :lessons, only: :destroy
  resources :bookings, only: [:index, :show, :edit, :update, :destroy] do
    resources :reviews, only: [:new, :create, :edit, :update]
  end
  resources :reviews, only: :destroy
  resources :chatrooms, only: [:show, :create] do
    resources :messages, only: :create
  end
end
