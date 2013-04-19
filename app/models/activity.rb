# == Schema Information
#
# Table name: activities
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  facility_id    :integer
#  type           :string(255)
#  date_completed :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Activity < ActiveRecord::Base
  attr_accessible :date_completed, :facility_id, :type, :user_id

  belongs_to :user
  belongs_to :facility

  validates_presence_of :user_id, :facility_id, :type, :date_completed
end
