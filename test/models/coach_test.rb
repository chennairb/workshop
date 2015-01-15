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

require 'test_helper'

class CoachTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
