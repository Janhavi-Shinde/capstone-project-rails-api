Rails.application.routes.draw do
  resources :spheres_goals
  resources :goals
  resources :spheres
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
