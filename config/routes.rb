Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sports, only: [:index, :show, :new, :create] do
    resources :routines, only: [:show]
  end
  resources :stretches, only: [:show, :create]
end
