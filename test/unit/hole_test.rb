# == Schema Information
#
# Table name: holes
#
#  id             :integer          not null, primary key
#  tee_id         :integer
#  number         :integer
#  par_men        :integer
#  par_women      :integer
#  handicap_men   :integer
#  handicap_women :integer
#  length         :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class HoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
