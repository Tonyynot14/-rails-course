class PostsController < ApplicationController
    before_action :authenticate_user!
    def index
        @users = User.all
        @user = current_user
    end
    def new
        @post =Post.new
    end
    def create
        @post =Post.new
        @post.info = params[:post][:info]
        @post.picture = params[:post][:picture]
        @post.user_id = current_user.id
        @post.save
        redirect_to posts_path
        
    end
    def edit
          @post =Post.find(params[:id])
    end
    def update
        @post =Post.find(params[:id])
        @post.info = params[:post][:info]
        @post.picture = params[:post][:picture]
        @post.user_id = current_user.id
        @post.save
        redirect_to posts_path
    end
    def show
    end
end
