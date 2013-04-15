# == Schema Information
#
# Table name: venues
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  city       :string(255)
#  state      :string(255)
#  website    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class VenueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
