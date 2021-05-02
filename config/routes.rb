Rails.application.routes.draw do
  resources :sightings
  resources :missing_flyers
  resources :dogs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/login", to: "users#login"
  post "/signup", to: "users#signup"
  post "/add_dog", to: "dogs#add_dog"
  post "/create_flyer", to: "missing_flyers#create_flyer"
  patch "/flyers/:id", to: "missing_flyers#update_flyer"
  post "/create_sighting", to: "sightings#create_sighting"


end