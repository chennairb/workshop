# == Schema Information
#
# Table name: participants
#
#  id                          :integer          not null, primary key
#  name                        :string(255)
#  email                       :string(255)
#  attended_meetups            :boolean
#  student_or_employed         :string(255)
#  living_in_chennai           :boolean
#  have_ruby_configured_laptop :boolean
#  remarks                     :text
#  created_at                  :datetime
#  updated_at                  :datetime
#  profession                  :string
#

class Participant < ActiveRecord::Base
  validates :name, presence: true
  validate :email_within_current_edition

  has_many :edition_participants
  has_many :editions, through: :edition_participants

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

  def already_registered_for?(edition)
    editions.include?(edition)
  end

  def email_within_current_edition
    if already_registered_for?(Edition.current)
      errors.add(:email, 'is already registered for this edition')
    end
  end

  # Done this way to get a false if EditionParticipant creation somehow fails
  def save_with_current_edition
    save &&
      EditionParticipant.create(participant_id: id, edition: Edition.current)
  end
end
