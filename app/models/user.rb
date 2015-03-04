class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :projects 
  has_many :pledges, foreign_key: "backer_id"
  has_many :rewards, through: :pledges 

end