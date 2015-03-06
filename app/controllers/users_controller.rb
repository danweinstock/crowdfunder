class UsersController < ApplicationController
	

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			redirect_to projects_path
		else 
			render :new
		end
	end

	def edit
	end

	def show
		@user = User.find(params[:id])
	end

	private 
	def user_params
		params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation, :avatar)
	end

end
