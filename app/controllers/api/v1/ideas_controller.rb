module Api
	module V1
		class IdeasController < ApiController			
			def index
				@ideas = Idea.includes([:comments]).all.order(created_at: :desc)
				render 'api/ideas/index'
			end
			def show
				@idea = Idea.find(params[:id])
				render "api/ideas/show"
			end
			def create
				#debug.logger(params);
				#Idea.create(:idea_params) 
				@idea = Idea.new(:description => params['description'], :display=>params['display'], :user_id=>params['user_id']) 
				if @idea.save					
			        render "api/ideas/create"				
				end		  		
			end

			private
			  def idea_params
			    params.require(:idea).permit(:description, :display)			    
			  end
		end
	end
end