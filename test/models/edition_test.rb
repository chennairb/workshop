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

require 'test_helper'

class EditionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
