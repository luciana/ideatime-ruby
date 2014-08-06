class User < ActiveRecord::Base
	has_many :ideas
	has_many :comments
	has_and_belongs_to_many :groups
	
	def self.from_website(name,email)
		where(:email => email).first_or_initialize.tap do |user|
	      user.provider = "website"
	      user.email = email
	      user.name = name	      
	      user.save!
	    end
	end
	def self.from_omniauth(auth)		
	    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
	      user.provider = auth.provider
	      user.uid = auth.uid
	      user.name = auth.info.name
	      user.email = auth.info.email
	      user.oauth_token = auth.credentials.token
	      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
	      user.save!
	    end
	end
end
