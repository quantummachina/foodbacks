class Foodback < ActiveRecord::Base
  attr_accessible :user_id, :address, :city, :content, :cover, :date, :dish, :invited, :invitedmail, :recipe, :title
  
  belongs_to :user
  belongs_to :city

  has_attached_file :cover

  validates :user_id, presence: true
  validates :title, presence: true
  validates :address, presence: true
  validates :content, presence: true
  #validates :date, presence: true
  validates :invited, presence: true
  validates :dish, presence: true
  
end
