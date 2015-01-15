# == Schema Information
#
# Table name: coaches
#
#  id                :integer          not null, primary key
#  name              :string
#  email             :string
#  twitter_handle    :string
#  attended_meetups  :boolean
#  living_in_chennai :boolean
#  created_at        :datetime
#  updated_at        :datetime
#

class Coach < ActiveRecord::Base

	def self.attended_meetups_options
		[['have', true], ["haven't", false]]
	end

	def self.living_in_chennai_options
		[['live', true], ["don't live", false]]
	end

end
