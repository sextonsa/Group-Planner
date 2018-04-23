class UsersController < ApplicationController
  def new
  end
  def create
  	@user = User.create(first_name: params[:fname], last_name: params[:lname], email: params[:email], password: params[:password]) 
  	if @user.valid?
		session[:user_id] = @user.id
  		redirect_to sessions_path
  	else
  		flash[:errors] = @user.errors.full_messages
  		return redirect_to :back
  end
end
def update
    @user = User.find_by(id: params[:id])
    @user.update(first_name: params[:fname], location:params[:location], last_name: params[:lname], email: params[:email])
    @user.save
    redirect_to root
  end
  def show
    @user = User.find_by(id: params[:id])
   
    
  end
end
