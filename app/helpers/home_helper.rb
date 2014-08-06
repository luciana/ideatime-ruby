module HomeHelper

	def loginLinks
		 if current_user
		 	display_text = "<div class='user-name'>     
		 	 <span>Welcome #{current_user.name}</span>      
             <span>#{link_to "Sign out", signout_path, id: 'sign_out'}</span>             
             </div>"
             	display_text.html_safe
		 else
		    link_to "Sign in with Facebook", "/auth/facebook", id: "sign_in"
		 end
	end
end
