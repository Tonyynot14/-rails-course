class ProductsController < ApplicationController
    def index
        @products = Product.all
    end
    
    def new
        @product = Product.new
        @manufacturers =Manufacturer.all
    end
     
    def create
        product= Product.new
        product.item_name = params[:product][:item_name]
        product.item_description = params[:product][:item_description]
        product.item_picture = params[:product][:item_picture]
        product.manufacturer_id= params[:product][:manufacturer_id]
        product.save
        redirect_to '/products'
    end
    
    def edit
       @product = Product.find(params[:id])
    end
    
    
    def update
        product = Product.find(params[:id])
        product.name = params[:product][:name]
        product.city = params[:product][:city]
        product.state = params[:product][:state]
        product.zip = params[:product][:zip]
        product.country = params[:product][:country]
        product.product_type = params[:product][:product_type]
        product.save
        redirect_to '/products'
    end
    
    def destroy
        #needs work
        product =Product.find(params[:id])
        product.destroy
        redirect_to '/products'
    end
end
