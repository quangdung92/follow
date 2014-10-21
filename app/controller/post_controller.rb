class PostController < ApplicationController 
  def new
    @post = Post.new
    @posts = Post.all 
  end
  def create
    @post = Post.new(:content => params[:content])
      if @post.save
      redirect_to :action => "new"
    else
      render "new"
    end
end
end
