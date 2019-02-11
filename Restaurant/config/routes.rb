Rails.application.routes.draw do
  devise_for :users
  resources :dishes
  resources :orders do
    member do
      get 'prepare'
      
    end
  end
 
  root 'orders#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
