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

class Round < ActiveRecord::Base
  attr_accessible :activity_id, :round_type, :strokes, :tee_id

  belongs_to :activity
  belongs_to :tee

  validates_presence_of :activity_id, :tee_id, :round_type
end
