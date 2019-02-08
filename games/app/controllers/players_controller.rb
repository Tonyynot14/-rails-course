class PlayersController < ApplicationController
    def index
        @players = Player.all
    end
    def new
        @player =Player.new
    end
    def create
        player =Player.new
        player.gamerTag=params[:player][:gamerTag]
        player.first_name=params[:player][:first_name]
        player.last_name=params[:player][:last_name]
        player.avatar=params[:player][:avatar]
        player.save
        redirect_to players_path
    end
    def edit
         @player =Player.find(params[:id])
    end
    def update
        player =Player.find(params[:id])
        player.gamerTag=params[:player][:gamerTag]
        player.first_name=params[:player][:first_name]
        player.last_name=params[:player][:last_name]
        player.avatar=params[:player][:avatar]
        player.save
        redirect_to players_path
    end
    def show
        @player = Player.find(params[:id])
        @games=Game.all
    end
    
    def add_game
        player =Player.find(params[:player_id])
        player_game =PlayerGame.find_by(
            player_id: params[:player_id],
            game_id: params[:game_id])
        if player_game==nil
          
            player_game = PlayerGame.new
            player_game.player_id = params[:player_id]
            player_game.game_id = params[:game_id]
            player_game.save
        end
        redirect_to player_path(player)
        
        
    end
    def destroy
        player_games =PlayerGame.where( player_id: params[:id])
        player_games.each do |delete|
            delete.destroy
        end
        player =Player.find(params[:id])
       
        player.destroy
        redirect_to players_path
    
    end
    
   
    
    def delete_game
        player =Player.find(params[:player_id])
        player_games =PlayerGame.where(
            player_id: params[:player_id],
            game_id: params[:game_id]
            )
            player_games.each do |player_game|
                player_game.destroy
            end
            
        redirect_to player_path(player)
            
        
    end
end
