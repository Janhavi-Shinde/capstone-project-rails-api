Rails.application.routes.draw do
  resources :spheres_goals
  resources :goals
  resources :spheres
  resources :users
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

  resources :users do
    resources :spheres 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
