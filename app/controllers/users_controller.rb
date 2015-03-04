class UsersController < ApplicationController
	

	def new
		@user = User.new
	end

	def create
	end

	def edit
	end

	def show
		@user = User.find(params[:id])
	end

	private 
	def user_params
		params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
	end

end
