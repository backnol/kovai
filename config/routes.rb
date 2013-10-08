Kovai::Application.routes.draw do
  resources :tweets, only: [:index]
  root to: 'home#index' 
end
