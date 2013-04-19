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

class Facility < ActiveRecord::Base
  attr_accessible :holes, :name, :facility_type, :venue_id

  belongs_to :venue
  has_many :tees, dependent: :destroy
  has_many :activities

  validates_presence_of :venue_id
end
