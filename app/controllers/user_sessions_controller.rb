class UserSessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	if @user = login(params[:email], params[:password])
  		redirect_back_or_to projects_url, notice: "You are logged in."
  	else
  		flash[:alert] = "Login Failed."
  		@user = User.new(email: params[:email])
  		render action: "new"
  	end
  end

  def destroy
  	logout
  	redirect_to projects_url, notice: "You've been logged out."
  end
end
