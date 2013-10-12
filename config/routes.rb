Kovai::Application.routes.draw do
  devise_for :users
  resources :tweets, only: [:index]
  resources :instas, only: [:index]
  root to: 'home#index' 
end
