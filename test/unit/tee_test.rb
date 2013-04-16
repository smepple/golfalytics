# == Schema Information
#
# Table name: tees
#
#  id                 :integer          not null, primary key
#  facility_id        :integer
#  name               :string(255)
#  rating_men         :decimal(, )
#  rating_front_men   :decimal(, )
#  rating_back_men    :decimal(, )
#  slope_men          :integer
#  slope_front_men    :integer
#  slope_back_men     :integer
#  rating_women       :decimal(, )
#  rating_front_women :decimal(, )
#  rating_back_women  :decimal(, )
#  slope_women        :integer
#  slope_front_women  :integer
#  slope_back_women   :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class TeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
