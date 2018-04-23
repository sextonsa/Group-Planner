class SessionsController < ApplicationController
 def index
 	@groups = Group.all
  end
  def create
  	@user = User.find_by(email: params[:email])
  	if @user
  		if @user.authenticate(params[:password])
	  		session[:user_id] = @user.id
	  		redirect_to sessions_path
	  	else
	  		flash[:errors] = ["invalid password"]
	  		redirect_to :back
	  	end
  	else
  		flash[:errors] = ['Please Register as a new user!']
  		return redirect_to :back
  	end 
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_path 
  end
end