MapsScavengerHunt::Application.routes.draw do
  devise_for :users
  resources :locations
  resources :guesses
  resources :games
  resources :played_games
  root to: 'locations#index'
end
