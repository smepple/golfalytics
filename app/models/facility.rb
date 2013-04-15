# == Schema Information
#
# Table name: facilities
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  name       :string(255)
#  holes      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Facility < ActiveRecord::Base
  attr_accessible :holes, :name, :facility_type, :venue_id

  belongs_to :venue
end
