Rails.application.routes.draw do
    #routes for courses
  get "/courses/new" => "courses#new"
  post "/courses" => "courses#create"
  get "/courses" => "courses#index"
  get "/courses/edit" => "courses#edit"
  post "courses/edit" => "courses#update"
  get "courses/delete" => "courses#delete"
  get "courses/show" => "courses#show"
  
  
  #routes for students 
  get "/students/new" =>"students#new"
  post "/students" => "students#create"
  get "/students" => "students#index"
  get "/students/edit" => "students#edit"
  post "/students/edit" => "students#update"
  get "/students/delete" => "students#delete"
  
end
