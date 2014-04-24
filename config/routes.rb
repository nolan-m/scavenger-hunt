MapsScavengerHunt::Application.routes.draw do
  devise_for :users
  resources :locations
  resources :games
  root to: 'locations#index'
end
