class OrdersController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @orders = Order.where(user_id: current_user.id)
    end
    
    def show
    end
    
    def new
        @order =Order.new
    end
    
    def create
        @order =Order.new
        @order.street_address =params[:order][:street_address]
        @order.city =params[:order][:city]
        @order.state =params[:order][:state]
        @order.zip =params[:order][:zip]
        @order.status ='Created'
        @order.user_id = current_user.id
        @order.save
        redirect_to prepare_order_path(@order)
    end
    
    def prepare
        @order =Order.find(params[:id])
        @dishes=Dish.all
    end
    
    def add_dish
    end
    
    def remove_dish
    end
    
    def submit
    end
    
end
