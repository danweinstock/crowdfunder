class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
	end

	def edit
	end

	private 
	def user_params
		params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
	end

end
