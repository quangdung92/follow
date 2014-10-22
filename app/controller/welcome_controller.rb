class WelcomeController < ApplicationController
  def index
  end
 def create
    user = User.login(params[:session][:username], params[:session][:pass])
      if user
      login user
      redirect_to user
    else
      render 'index'
    end
    end
 def sucess
   @user = User.find(params[:id])
   @users = User.all
   @relation = Relation.new
 end
end
