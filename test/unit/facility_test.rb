# == Schema Information
#
# Table name: facilities
#
#  id            :integer          not null, primary key
#  facility_type :string(255)
#  name          :string(255)
#  holes         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  venue_id      :integer
#

require 'test_helper'

class FacilityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
