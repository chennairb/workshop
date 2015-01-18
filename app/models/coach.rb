# == Schema Information
#
# Table name: coaches
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  email             :string(255)
#  twitter_handle    :string(255)
#  attended_meetups  :boolean
#  living_in_chennai :boolean
#  created_at        :datetime
#  updated_at        :datetime
#

class Coach < ActiveRecord::Base
  has_many :coach_editions
  has_many :coaches, through: :coach_editions

  def self.attended_meetups_options
    [['have', true], ["haven't", false]]
  end

  def self.living_in_chennai_options
    [['live', true], ["don't live", false]]
  end
end
