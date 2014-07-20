class WelcomeController < ApplicationController

	def index
		@participant = Participant.new
		@coach = Coach.new
	end
	
end