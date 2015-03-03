class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	def create
	end
	
	def show
	end

	def update
	end

	def edit
	end

	def destroy
	end

	private
	def project_params
		params.require(:project).permit(:title, :description, :goal, rewards_attributes: [:description, :qty, :price])
	end

end
