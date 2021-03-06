class PlacesController < ApplicationController
    def index
        @places = Place.all
    end
    
    def new
        @place = Place.new
    end
    
    def create
        place = Place.new
        place.name = params[:place][:name]
        place.picture=params[:place][:picture]
        place.description=params[:place][:description]
        place.save
        redirect_to places_path
    end
    
    def edit
        @place = Place.find(params[:id])
    end
    
    def update
        place = Place.find(params[:id])
        place.name = params[:place][:name]
        place.picture=params[:place][:picture]
        place.description=params[:place][:description]
        place.save
        redirect_to places_path
        
    end
    
    def delete
    end
    
    def show
        @place =Place.find(params[:id])
    end
    

end
