object @idea

attributes :id, :description, :display, :created_at
node(:hascomments) {|idea| idea.comments.present?}
child :user, :object_root => false  do
		attribute :id, :name, :location	
end
child :comments, :object_root => false  do
		attribute :body, :stars, :created_at		
end



