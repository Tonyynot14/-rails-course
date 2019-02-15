class RelationshipsController < ApplicationController
  def create
     @relationship = Relationship.new(follower_id: users(current_user).id,
                                     followed_id: params[:followed_id])
    redirect_to posts_path
  end
  
  def destroy
    user = Relationship.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_to user
  end
end
