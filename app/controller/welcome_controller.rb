class WelcomeController < ApplicationController
  def index
    @users = (current_user.blank? ? User.all : User.find(:all, :conditions => ["id != ?", current_user.id]))
  end

  def create
    user = User.login(params[:session][:username], params[:session][:pass])
    if user
      login user
      redirect_to root_url
    else
      redirect_to welcome_index_path
    end
  end

  def sucess
    @user = User.find(params[:id])
    @relation = Relation.new
  end

  def edit
  @user = User.find(params[:id])
  @user.assign_attributes(:image => params[:image])
  @user.save if @user.changed?
end

  def destroy
    logout
    redirect_to root_url
  end
end
