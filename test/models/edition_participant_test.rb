# == Schema Information
#
# Table name: edition_participants
#
#  id             :integer          not null, primary key
#  edition_id     :integer
#  participant_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_edition_participants_on_edition_id      (edition_id)
#  index_edition_participants_on_participant_id  (participant_id)
#

require 'test_helper'

class EditionParticipantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
