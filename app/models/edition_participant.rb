class EditionParticipant < ActiveRecord::Base
  belongs_to :edition
  belongs_to :participant
end
