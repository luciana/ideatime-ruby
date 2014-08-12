module HomeHelper
	def loginLinks
		 unless current_user
		    link_to "Sign in with Facebook", "/api/v1/auth/facebook", id: "sign_in"
		 end
	end
end
