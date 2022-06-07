Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#landing'
  get 'home', to: 'pages#home'

  resources :sports, only: [:index, :show, :new, :create]
  resources :routines, only: [:new, :create, :show, :destroy] do
    get 'routinestart', to: 'routines#routine_start'
  end
  resources :stretches, only: [:index, :show] do
    resources :routines, only: :update
    resources :stretches_routines, only: :create
  end
end
