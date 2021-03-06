Rails.application.routes.draw do
  devise_for :users
  root "ideas#index"
  resources :ideas do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
