Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :categories, only: [:show, :create, :destroy]
  resources :choices, only: [:index, :new, :create, :update, :destroy] do
    resources :answers, only: [:create, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
