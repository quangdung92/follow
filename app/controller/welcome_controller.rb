class WelcomeController < ApplicationController
  def index
     @users = User.all
  end
 def create
    user = User.login(params[:session][:username], params[:session][:pass])
      if user
      login user
      redirect_to root_url 
    else
      render 'index'
    end
    end
 def sucess
   @user = User.find(params[:id])
   @relation = Relation.new
 end
end
