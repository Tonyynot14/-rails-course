class CoursesController < ApplicationController
    #Crud for courses
    
    #form to create 
    def new
    end
    
    #create course
    def create
        course = Course.new
        course.name = params[:name]
        course.location = params[:location]
        course.description =params[:description]
        course.save
        redirect_to '/courses'
    
    end
    
    #list courses
    def index
        @courses =Course.all
    end
    
    #send back form to edit
    def edit
        @course =Course.find(params[:id])
    end
    
    #updates course 
    def update
        course = Course.find(params[:id])
        course.name = params[:name]
        course.location = params[:location]
        course.description =params[:description]
        course.save
        redirect_to '/courses'
    end
    
    #delete
    def delete
        course =Course.find(params[:id])
        course.destroy
        redirect_to '/courses'
    end
    
    def show
        @course =Course.find(params[:id])
    end
end
