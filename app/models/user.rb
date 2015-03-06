class User < ActiveRecord::Base
  authenticates_with_sorcery!
  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :email, uniqueness: true
  
  has_many :projects, foreign_key: "owner_id" 
  has_many :pledges, foreign_key: "backer_id"
  has_many :rewards, through: :pledges 

  mount_uploader :avatar, AvatarUploader
end