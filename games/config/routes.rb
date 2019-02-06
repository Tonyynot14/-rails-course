Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #when this route is farther down in the list rails assumes i want a destroy method even with the specific class path players_remove_game_path. 
  #It assumes I want the regular destroy method for player_path havent figured out why
  delete '/players/remove_game' => 'players#delete_game'
  delete '/games/remove_player' => 'games#delete_player'
  resources :games
  resources :players
  
  post '/player/add_game' => "players#add_game"
  root "players#index"
end
