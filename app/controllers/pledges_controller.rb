class PledgesController < ApplicationController
	def new
	end

	def create
		@pledge = Pledge.new(pledge_params)

		respond_to do |format|
			if @pledge.save
				@project = Project.find(params[:project_id])

				# @backer_count = @project.pledges.count
				# @total_pledged = number_to_currency @project.pledges.pluck(:amount).sum
				# @goal = @project.goal
				# @progress = @pledge.to_f / @goal.to_f * 100
				# @reward_backer_count = @pledge.reward.pledges.count


				format.html { redirect_to project_path(@pledge.reward.project) }
				format.js {}
			else
				format.html { render 'new' }
				format.js {}
			end
		end
	end

	# respond_to do |format|
	#       if @review.save
	#         format.html { redirect_to product_path(@product.id), notice: 'Review added.' }
	#         format.js {} # This will look for app/views/reviews/create.js.erb
	#       else
	#         format.html { render 'products/show', alert: 'There was an error.'  }
	#         format.js {} # This will look for app/views/reviews/create.js.erb
	#       end
	#     end    

	private
	def pledge_params
		params.require(:pledge).permit(
			:reward_id,
			:backer_id,
			:amount
		)
	end


end
