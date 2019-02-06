class GamesController < ApplicationController
    def index
        @games = Game.all
    end
    def new
        @game =Game.new
    end
    def create
        game =Game.new
        game.name=params[:game][:name]
        game.genre=params[:game][:genre]
        game.description=params[:game][:description]
        game.publisher=params[:game][:publisher]
        game.save
        redirect_to games_path
    end
    def edit
         @game =Game.find(params[:id])
    end
    def update
        game =Game.find(params[:id])
        game.name=params[:game][:name]
        game.genre=params[:game][:genre]
        game.description=params[:game][:description]
        game.publisher=params[:game][:publisher]
        game.save
        redirect_to games_path
    end
    def show
        @game = Game.find(params[:id])
        @players=Player.all
    end
    
end
