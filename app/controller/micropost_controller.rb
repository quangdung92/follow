class MicropostController < ApplicationController
  def new
    @post = Micropost.new
    @posts = current_user.microposts.all
  end
  def create
    @post = current_user.microposts.create(:content => params[:content])
    render "new"
  end
end
