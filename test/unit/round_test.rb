# == Schema Information
#
# Table name: rounds
#
#  id          :integer          not null, primary key
#  activity_id :integer
#  tee_id      :integer
#  round_type  :string(255)
#  strokes     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class RoundTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
