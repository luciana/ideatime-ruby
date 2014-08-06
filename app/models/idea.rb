class Idea < ActiveRecord::Base

	belongs_to :user #user_id
	has_many :comments, :dependent => :destroy
	
end
