# == Schema Information
#
# Table name: participants
#
#  id                          :integer          not null, primary key
#  name                        :string           not null
#  email                       :string           not null
#  attended_meetups            :boolean
#  student_or_employed         :string
#  living_in_chennai           :boolean
#  have_ruby_configured_laptop :boolean
#  remarks                     :text
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  profession                  :string
#  edition_id                  :integer
#
# Indexes
#
#  index_participants_on_edition_id  (edition_id)
#  index_participants_on_email       (email)
#

class Participant < ActiveRecord::Base

	validates :name, presence: true
	validates :email, uniqueness: true, presence: true 
	
	belongs_to :edition

	def self.student_or_employed_options
		%w(Student Professional)
	end

	def self.attended_meetups_options
		[['have', true], ["haven't", false]]
	end

	def self.have_ruby_configured_laptop_options
		[['have', true], ["don't have", false]]
	end

	def self.living_in_chennai_options
		[['live', true], ["don't live", false]]
	end
end
