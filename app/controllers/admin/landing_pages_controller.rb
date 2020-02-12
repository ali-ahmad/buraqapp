class LandingPagesController < ApplicationController
	def index
		@naats = Naat.all
		render :layout => 'landing'
	end

end
