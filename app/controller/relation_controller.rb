class RelationController < ApplicationController
  def create
    follow = User.find(params[:relation][:following_id])
    current_user.following << follow
    redirect_to follow
  end

 def destroy
    user = Relation .find(params[:id]).following
    current_user.unfollow(user)
    redirect_to user
  end
end
