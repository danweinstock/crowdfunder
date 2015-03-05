class PledgesController < ApplicationController
	def new

	end

	def create
		@pledge = Pledge.new
		@pledge.backer_id = current_user.id
		@pledge.amount = @reward.price
		@pledge.reward_id = @reward.id

		if @pledge.save 
			redirect_to project_path(@project)
		else
			render 'new'
		end
	end



end
