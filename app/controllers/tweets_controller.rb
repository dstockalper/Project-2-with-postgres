class TweetsController < ApplicationController



	private

	def tweet_params
		params.require(:tweet).permit(
			:author,
			:body
		)
	end
	
end
