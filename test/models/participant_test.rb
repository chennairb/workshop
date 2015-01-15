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

require 'test_helper'

class ParticipantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
