object @pose
attributes :id, :name,
		:description,
		:image_path,
		:purpose,        
        :repetition,
        :sound_track_path
        :duration
            
node(:image_url) {|pose| pose_url(pose)}
node(:duration){|pose| pose.duration}

child :pose_category do
	attributes :id, :name	
end

child :props do
	attributes :id, :name	
end

child :concentrations do
	attributes :id, :name	
end

child :injuries do
	attributes :id, :name	
end

