Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :courses do
    resources :subtopics, only: [:show, :new, :create, :edit, :update ] do
      resources :lessons, only: [:show, :new, :create, :edit, :update]
    end
  end
  resources :subtopics, only: :destroy
  resources :lessons, only: :destroy
end
