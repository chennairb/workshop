# == Schema Information
#
# Table name: coaches
#
#  id                :integer          not null, primary key
#  name              :string           not null
#  email             :string           not null
#  twitter_handle    :string
#  attended_meetups  :boolean
#  living_in_chennai :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class CoachTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
