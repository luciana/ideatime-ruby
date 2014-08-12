module Api
	module V1
		class CommentsController <  ApiController
		
			def index
				@comment = Comment.all
				render "api/comments/show"		
			end
			def show
				@comment = Comment.find(params[:id])
				render "api/comments/show"		
			end
			def create				
				@comment = Comment.new(:body => params['body'], :stars=>params['stars'], :idea_id=>params['idea_id']) 
				if @comment.save					
			        render "api/comments/create"				
				end		  		
			end

			private
				  def comment_params
				    params.require(:comment).permit(:body, :stars, :user_id)			    
				  end
			end
	end
end