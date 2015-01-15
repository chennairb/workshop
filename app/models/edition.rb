# == Schema Information
#
# Table name: editions
#
#  id            :integer          not null, primary key
#  name          :string
#  date_of_event :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Edition < ActiveRecord::Base
	has_many :participants
	has_many :coaches
end
