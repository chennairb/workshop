# == Schema Information
#
# Table name: participants
#
#  id                          :integer          not null, primary key
#  name                        :string
#  email                       :string
#  attended_meetups            :boolean
#  student_or_employed         :string
#  living_in_chennai           :boolean
#  have_ruby_configured_laptop :boolean
#  remarks                     :text
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  profession                  :string
#

require 'test_helper'

class ParticipantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
