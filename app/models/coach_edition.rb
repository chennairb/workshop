# == Schema Information
#
# Table name: coach_editions
#
#  id         :integer          not null, primary key
#  coach_id   :integer
#  edition_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_coach_editions_on_coach_id    (coach_id)
#  index_coach_editions_on_edition_id  (edition_id)
#

class CoachEdition < ActiveRecord::Base
  belongs_to :coach
  belongs_to :edition
end
