class WelcomeController < ApplicationController

	http_basic_authenticate_with name: "chennai.rb", password: "september7", except: :index

	def index
		@participant = Participant.new
		@coach = Coach.new
	end
	
end