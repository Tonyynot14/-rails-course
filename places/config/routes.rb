Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :places
  
  post '/users/add_place' => "users#add_place"
  
    root "places#index"
end
