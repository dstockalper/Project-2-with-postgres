class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
 	 # For APIs, you may want to use :null_session instead.
  	protect_from_forgery with: :exception

	require 'tweetstream'
	require 'github_api'
	require 'rake' 
	require 'twitter'

	
	def twitter_call
		

		client = Twitter::REST::Client.new do |config|  
			# config.consumer_key       = "j5FU1gMblYZ3BfxAnrL5a2ytv"
		 #  	config.consumer_secret    = "CYydzk4eKA8yS5UVNMeCoBt5rDGRoQyTY4HZiELF523pjTHjXt"
		 #  	config.oauth_token        = "2152549535-JLpXTvd3JDJ52Bkj7OM7ZDc3ktqKHskkTOSWRs1"
		 #  	config.oauth_token_secret = "UKkVTzPEjetfGNCuOHJy76DjQWLmjQRmKjZJkLM3AFT2X"
			config.consumer_key       = TWITTER_CONSUMER_KEY
		 	config.consumer_secret    = TWITTER_CONSUMER_SECRET
		 	config.oauth_token        = TWITTER_ACCESS_TOKEN
		 	config.oauth_token_secret = TWITTER_ACCESS_TOKEN_SECRET
		  	# config.auth_method        = :oauth
		end


		result = client.search('49ers').take(3)
		puts result

		render "main/index"
		binding.pry
	end  
		
end
