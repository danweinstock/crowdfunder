class Project < ActiveRecord::Base
	has_many :rewards
	has_many :pledges, through: :rewards
	belongs_to :user
end
