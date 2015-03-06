class PledgesController < ApplicationController
	def new

	end

	def create
		@pledge = Pledge.new(pledge_params)

		respond_to do |format|
			if @pledge.save 
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
