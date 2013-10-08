Kovai::Application.routes.draw do
  resources :tweets, only: [:index]
end
