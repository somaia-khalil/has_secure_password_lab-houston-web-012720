class SessionsController < ApplicationController
  def new
   @user = User.new
  end

  def create
  user = User.find_by(name: params[:user][:name])
  user = user.try(:authenticate,params[:user][:password])
  if  user
    session[:user_id] = user.id
    @user = user
    redirect_to '/users/welcome'
  else 
    redirect_to '/sessions/new'  
   end
  end
end


