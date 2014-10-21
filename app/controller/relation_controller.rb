class RelationController < ApplicationController
  def create
    @current_user = User.find(params[:relation][:id])
    follow = User.find(params[:relation][:following_id])
    @current_user.followers << follow
    redirect_to @current_user
  end

  def destroy
    relation = Relation.find(params[:id])
    user = relation.following
    relation.destroy
    redirect_to user
  end

end
