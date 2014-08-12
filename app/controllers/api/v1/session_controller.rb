module Api
  module V1
    class SessionController < ApiController
      #https://coderwall.com/p/bsfitw
      def create 
        auth = request.env["omniauth.auth"]
        if auth.present?
        	user = User.from_omniauth(auth)
        else
          user = User.from_website(params['name'], params['email'])
        end
        	session[:user_id] = user.id
          @session = session    
          render "api/sessions/create" 	
      end

      def destroy  	
        session[:user_id] = nil
        @session = session
        render "api/sessions/destroy" 
      end
    end
  end
end