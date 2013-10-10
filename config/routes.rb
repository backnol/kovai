Kovai::Application.routes.draw do
  resources :tweets, only: [:index]
  resources :instas, only: [:index]
  root to: 'home#index' 
end
