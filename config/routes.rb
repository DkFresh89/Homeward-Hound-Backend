Rails.application.routes.draw do
  resources :sightings
  resources :missing_flyers
  resources :dogs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
