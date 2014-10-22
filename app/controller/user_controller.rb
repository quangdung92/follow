class UserController < ApplicationController
  def new
    @user = User.new
  end
  def signup
    @user = User.new(:username => params[:username], :pass => params[:pass])
    if @user.save
      redirect_to welcome_index_path
    else
      render "new"
    end
  end
end

