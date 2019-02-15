Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :followers
  root "posts#index"
end
