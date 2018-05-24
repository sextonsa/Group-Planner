class GroupsController < ApplicationController
  def create
  	@group = Group.create(name: params[:name], description: params[:description], user_id: current_user.id)
  	if @group.valid?
  		redirect_to :back
  	else
  		flash[:errors] = @group.errors.full_messages
  		return redirect_to :back
  end
  end
  def show
  	group = Group.eager_load(user: :memberships).where(id: params[:id])
  	@group = group[0]
  	@members = Member.eager_load(:user).where(group_id: params[:id])
  	@here = @members.find_by(user_id: current_user.id)
  end
  def member
  	group = Group.find_by(id: params[:id])
  	unless group.memberships.include? current_user
	  	@member = Member.create(user_id: current_user.id, group_id: params[:id]) 
	  	if @member.valid?
	  		redirect_to :back
	  	else
	  		flash[:errors] = @member.errors.full_messages
	  		return redirect_to :back
	  	end
	end
end
	def destroy
		group = Group.find(params[:id])
		group.destroy # if group.user.id == session[:id]
		redirect_to :back
	end
	def remove
		@leave = Member.where(user_id: current_user.id).where(group_id: params[:id])
		@leave.destroy(@leave)
		p "HERE"
		
		
		redirect_to :back
	end
end
