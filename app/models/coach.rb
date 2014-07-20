class Coach < ActiveRecord::Base

	def self.attended_meetups_options
		[['have', true], ["haven't", false]]
	end

	def self.living_in_chennai_options
		[['live', true], ["don't live", false]]
	end

end
