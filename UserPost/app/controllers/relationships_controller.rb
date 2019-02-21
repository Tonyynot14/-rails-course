class RelationshipsController < ApplicationController
  
  
  def create
     user = User.find(params[:followed_id])
     current_user.follow(user)
     session[:return_to] ||= request.referer
     redirect_to session.delete(:return_to)
  end
  
  def destroy
    user = User.find(params[:followed_id])
    current_user.unfollow(user)
    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to)
   
  end
  
  def show
    @user = current_user
    @users = User.all
  end
end
