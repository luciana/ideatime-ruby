class Comment < ActiveRecord::Base
	belongs_to :ideas #idea_id
	belongs_to :users #user_id
end
