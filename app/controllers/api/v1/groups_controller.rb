module Api
	module V1
		class GroupsController <  ApiController
			def index
			  	@groups = Group.all
			  	render "api/groups/index"
			end
			def show
				@groups = Group.find(params[:id])
				render "api/groups/show"
			end

			private
			  def group_params
			    params.require(:group).permit(:name)			    
			  end
		end
	end
end