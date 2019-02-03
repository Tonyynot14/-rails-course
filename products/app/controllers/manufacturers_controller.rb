class ManufacturersController < ApplicationController
    def index
        @manufacturers = Manufacturer.all
    end
    
    def new
        @manufacturer = Manufacturer.new
    end
     
    def create
        manufacturer= Manufacturer.new
        manufacturer.name = params[:manufacturer][:name]
        manufacturer.city = params[:manufacturer][:city]
        manufacturer.state = params[:manufacturer][:state]
        manufacturer.zip = params[:manufacturer][:zip]
        manufacturer.country = params[:manufacturer][:country]
        manufacturer.manufacturer_type = params[:manufacturer][:manufacturer_type]
        manufacturer.save
        redirect_to '/manufacturers'
    end
    
    def edit
       @manufacturer = Manufacturer.find(params[:id])
    end
    
    def show
        #needs work
        @manufacturer = Manufacturer.find(params[:id])
    end
    
    def update
        manufacturer = Manufacturer.find(params[:id])
        manufacturer.name = params[:manufacturer][:name]
        manufacturer.city = params[:manufacturer][:city]
        manufacturer.state = params[:manufacturer][:state]
        manufacturer.zip = params[:manufacturer][:zip]
        manufacturer.country = params[:manufacturer][:country]
        manufacturer.manufacturer_type = params[:manufacturer][:manufacturer_type]
        manufacturer.save
        redirect_to '/manufacturers'
    end
    
    def destroy
        #needs work
        manufacturer =Manufacturer.find(params[:id])
        manufacturer.destroy
        redirect_to '/manufacturers'
    end
    
end
