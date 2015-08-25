class Place < ActiveRecord::Base

	belongs_to :user
	has_many :comments 

	geocoded_by :address
  	after_validation :geocode


	validates :name, :presence => true
	validates :address, :presence => true
	validates :description, :presence => true, :length => { :minimum => 4 }

	def last_comment
		self.comments.order("id ASC").last 
	end 
end
