class ProjectsController < ApplicationController
	
	def index
		@projects = Project.active.order('projects.created_at DESC').page(params[:page])
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		@project.owner_id = current_user.id
		# @project = Project.new(project_params)

		if @project.save
			redirect_to project_path(@project.id)
		else 
			render :new
		end
	end
	
	def show
    @project = Project.find(params[:id])
    @pledged = @project.pledges.pluck(:amount).sum
    @goal = @project.goal
    @progress = @pledged.to_f / @goal.to_f * 100
	end

	def update
	end

	def edit
	end

	def destroy
	end

	private
	def project_params
		params.require(:project).permit(:title,
			:description,
			:goal,
			:start_date,
			:end_date,
			rewards_attributes: [
				:description,
				:qty,
				:price
			]
		)
	end
end
