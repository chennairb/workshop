# == Schema Information
#
# Table name: editions
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  date_of_event :datetime         not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Edition < ActiveRecord::Base
  validates :name, :date_of_event, presence: true
  validates :name, uniqueness: { case_sensitive: false }

  has_many :edition_participants
  has_many :participants, through: :edition_participants, dependent: :destroy
  has_many :coach_editions
  has_many :coaches, through: :coach_editions, dependent: :destroy

  scope :current, -> { where(name: 'Mar-2015').last }
end
