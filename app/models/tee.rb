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

class Tee < ActiveRecord::Base
  attr_accessible :facility_id, :name, :rating_back_men, :rating_back_women, :rating_front_men, :rating_front_women, :rating_men, :rating_women, :slope_back_men, :slope_back_women, :slope_front_men, :slope_front_women, :slope_men, :slope_women

  belongs_to :facility
  has_many :holes

  validates_presence_of :facility_id, :name
end
