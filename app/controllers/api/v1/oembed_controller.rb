module Api
	module V1
		class OembedController < ApiController
			def exercise			
				#http://localhost:3000/api/v1/oembed/poses/?url=http%3a%2f%2fwww.mypilatespal.com%2fposes%2f487
				url = params[:url]	
				
				u = URI.parse(params[:url])					
				id = u.path.split('/').last
				if(id.present?)					
						pose = Pose.find(id)
						@product = create_product_object(pose, u)
						render json: @product	
				end
			end			

			def workout
				#http://localhost:3000/api/v1/oembed/studios/?url=http%3a%2f%2fwww.mypilatespal.com%2fstudios%2f575
				url = params[:url]	
				
				u = URI.parse(params[:url])	
				host = u.host
				id = u.path.split('/').last

				if(id.present?)					
					workout = Workout.find(id, :include => [:poses])
					response = {}					
					response["provider_name"] = "#{workout.title} My Pilates Pal Workout  "
					response["url"] = url									
					products = []
					
						workout.poses.each do |pose|
					products.push(create_product_object(pose, u))			
				end
				response["products"] = products

				@response = response
				render json: @response
				#rNOT USING RABL coz it doesnt play nicely converting hash when no root is needed
				#render "api/oembed/workout"		
					
				end

			end

			private
			def create_product_object pose, u
				product = {}
				product["type"] = "link"
				product["provider_name"] = "My Pilates Pal"
				product["provider_url"]= "http://www.mypilatespal.com"
				product["version"] = "1.0"	
				tags =[]						
				tags.push("pilates", "fitness", "workout", "weight loss")						
				product["tags"] = tags
				product["author_name"] = "My Pilates Pal Instructors"
				product["author_url"] = "http://mypilatespal.com/instructors"
			 	product["price"]= 0.1
			 	product["thumbnail_url"] ="http://www.mypilatespal.com/assets/Pose1.png"
				product["thumbnail_width"] = 570
				product["thumbnail_height"] = "*"
				product["category"] = "health_fitness"
				product["availability"] = "preorder"
				product["currency_code"]="USD"	  													
				product["title"] = pose.name
				product["brand"] = "My Pilates Pal"
				product["product_id"] = pose.id 
				product["description"] = pose.description 
				product["cache_age"] = 86400
				offers =[]
                offer ={}
                offer["price"]=0.1
				offer["currency_code"]="USD"
                offers.push(offer)
				product["offers"] = offers
				images=[]
				images.push("#{u.scheme}://#{u.host}/assets/small/#{pose.image_path}")							
				product["images"] =images
				product
			end
		end		
	end
end



