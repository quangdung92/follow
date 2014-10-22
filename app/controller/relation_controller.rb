class RelationController < ApplicationController
  def create
    follow = User.find(params[:relation][:following_id])
    current_user.following << follow
    redirect_to follow
  end

  def destroy
    relation = Relation.find(params[:id])
    user = relation.following
    relation.destroy
    redirect_to user
  end

end
