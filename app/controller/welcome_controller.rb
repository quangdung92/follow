class WelcomeController < ApplicationController
def index
  end
 def login
    @user = User.login(params[:username], params[:pass])
    if @user.blank?          
      redirect_to :action => "error"  
    else
      redirect_to @user
    end   
 def sucess
   @users = User.all
   @current_user = User.find(params[:id])
   @relation = Relation.new
 end
 def error 
 end 
 def show
 end
end
end
