class UserController < ApplicationController
  def new
    @user = User.new
  end
  def signup
    @user = User.new(:username => params[:username], :pass => params[:pass], 
                     :age => params[:age], :image => params[:image])
    if @user.save
      redirect_to welcome_index_path
    else
      render "new"
    end
  end
end


