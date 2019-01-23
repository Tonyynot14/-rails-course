Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/contacts" => "contacts#index"
  get "/contacts/new" => "contacts#new"
  post "contacts" => "contacts#create"
  get "contacts/edit" => "contacts#edit"
  post "contacts/edit" =>"contacts#editInfo"
  get "contacts/search" =>"contacts#search"
  get "contacts/search_results" => "contacts#search_results"
end
