class Participant < ActiveRecord::Base

	def self.student_or_employed_options
		%w(Student Professional)
	end

	def self.attended_meetups_options
		[['have', true], ["haven't", false]]
	end

	def self.have_ruby_configured_laptop_options
		[['have', true], ["haven't", false]]
	end

	def self.living_in_chennai_options
		[['live', true], ["don't live", false]]
	end
end
