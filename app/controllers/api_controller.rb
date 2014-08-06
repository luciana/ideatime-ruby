class ApiController < ApplicationController	
	respond_to :json

	def not_found(message)		 	
		log_error(message, {:priority => 1, 
							:http_status => 404, 
							:ip=>''})
		render :json => {}, :status => 404

	end
end