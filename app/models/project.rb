class Project < ActiveRecord::Base
	has_many :rewards
	has_many :pledges, through: :rewards
	belongs_to :owner, class_name: "User"
	accepts_nested_attributes_for :rewards, :reject_if => :all_blank, :allow_destroy => true
	accepts_nested_attributes_for :pledges, :reject_if => :all_blank, :allow_destroy => true

	validates :title, presence: true
	validates :description, presence: true
	validates :goal, presence: true

	scope :active, -> {where('end_date > ?', Time.zone.now)}

	
end
