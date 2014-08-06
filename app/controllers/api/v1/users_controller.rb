module Api
	module V1
		class UsersController < ApiController								
				
			private
			  def user_params
			    params.require(:user).permit(:name, 
			    	:email, 
			    	:location, 
			    	:provider, 
			    	:uid, 
			    	:oauth_token, 
			    	:oauth_expires_at)			    
			  end
		end
	end
end