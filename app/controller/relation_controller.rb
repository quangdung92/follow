class RelationController < ApplicationController
  def create
    follow = User.find(params[:relation][:following_id])
    current_user.following << follow
    logger.debug "follow: #{follow.attributes.inspect}"
    logger.debug "current_user: #{current_user.attributes.values}"
    
    current_user.following.each do |follow|
    logger.debug "following: #{follow.attributes.values}"
  end
    redirect_to follow
  end

 def destroy
    user = Relation .find(params[:id]).following
    current_user.unfollow(user)
    redirect_to user
  end
end
