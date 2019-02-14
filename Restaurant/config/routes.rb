Rails.application.routes.draw do
  devise_for :users
  resources :dishes
  resources :orders do
    member do
      get 'prepare'
      post 'add'
      delete 'remove'
      put 'submit'
    end
  end
   
  get '/restaurant/orders' => 'restaurant_orders#index'
  put '/restaurant/orders/:id/prepare' => 'restaurant_orders#prepare', as: :prepare
  put '/restaurant/orders/:id/entroute' => 'restaurant_orders#enroute', as: :enroute
  put '/restaurant/orders/:id/deliver' => 'restaurant_orders#deliver', as: :deliver
  put '/restaurant/orders/:id/completed' => 'restaurant_orders#complete', as: :complete
   
 
  root 'orders#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
