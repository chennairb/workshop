class WelcomeController < ApplicationController

	http_basic_authenticate_with name: ENV['ADMIN_USER'], password: ENV['ADMIN_PASS'], except: :index

	def index
		@participant = Participant.new
		@coach = Coach.new
	end
	
end