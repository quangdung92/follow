class MicropostController < ApplicationController
  def new
    @post = Micropost.new
    @posts = current_user.microposts.all
  end

  def create
    @post = current_user.microposts.create(:content => params[:content])
    logger.debug "New post: #{@post.attributes.inspect}"
    logger.debug "Post should be valid: #{@post.valid?}"
    if @post
      redirect_to micropost_new_path
    else
    end
  end

  def edit
    @micropost = Micropost.find(params[:id])
    logger.debug "Post should be valid: #{@micropost.id}"
    logger.debug "Post should be valid: #{@micropost.content}"
    if @micropost.update_attributes(params[:content])
    logger.debug "new content: #{@micropost.content?}"
    else
      reder 'edit'
    end
  end
end
