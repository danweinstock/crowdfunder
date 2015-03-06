class PledgesController < ApplicationController
	def new
	end

	def create
		@pledge = Pledge.new(pledge_params)

		respond_to do |format|
			if @pledge.save
				@project = Project.find(params[:project_id])
				@pledged = @project.pledges.pluck(:amount).sum
				@goal = @project.goal
				@progress = @pledged.to_f / @goal.to_f * 100
				format.html { redirect_to project_path(@pledge.reward.project) }
				format.js {}
			else
				format.html { render 'new' }
				format.js {}
			end
		end
	end

	private
	def pledge_params
		params.require(:pledge).permit(
			:reward_id,
			:backer_id,
			:amount
		)
	end


end
