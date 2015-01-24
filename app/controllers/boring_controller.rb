class BoringController < ApplicationController

	def index
	end

	# POST /boring/set
	def set
		@boring = Boring.first
		@boring.count ||= 0
		@boring.count += 1
		@boring.save!
		render text: 'cool, recorded'
	end	

	# GET /borings
	def count
		@boring = Boring.first
		render text: @boring.count
	end

	# GET /borings/reset
	def reset
		@boring = Boring.first
		@boring.count = 0
		@boring.save
		render text: 'done reset'
	end
	
end