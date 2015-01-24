# == Schema Information
#
# Table name: borings
#
#  id         :integer          not null, primary key
#  count      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Boring < ActiveRecord::Base
end
