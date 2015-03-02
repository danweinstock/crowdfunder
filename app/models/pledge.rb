class Pledge < ActiveRecord::Base
	belongs_to :reward
	# TO DO: Add belongs to user relation
end
