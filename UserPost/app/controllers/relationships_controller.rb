class RelationshipsController < ApplicationController
  
  
  def create
     user = User.find(params[:followed_id])
     current_user.follow(user)
     redirect_to posts_path
  end
  
  def destroy
    user = User.find(params[:followed_id])
    current_user.unfollow(user)
    redirect_to posts_path
   
  end
  
  def show
    @user = current_user
    @users = User.all
  end
end
