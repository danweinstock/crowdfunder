class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)

		if @project.save
			redirect_to project_path(@project.id)
		else 
			render :new
		end
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
