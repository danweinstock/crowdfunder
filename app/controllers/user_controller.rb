class UserController < ApplicationController

	def new
	end

	def create
	end

	def edit
	end

	def destroy 
	end 

	private 
	def user_params
		params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
	end

end
