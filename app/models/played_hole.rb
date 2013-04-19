# == Schema Information
#
# Table name: played_holes
#
#  id                            :integer          not null, primary key
#  round_id                      :integer
#  hole_number                   :integer
#  strokes                       :integer
#  club_off_tee                  :string(255)
#  tee_shot_distance             :integer
#  fairway                       :string(255)
#  clear_approach                :boolean
#  approach_club                 :string(255)
#  approach_distance             :integer
#  approach                      :string(255)
#  approach_miss_distance        :integer
#  chips                         :integer
#  sand_shots                    :integer
#  up_and_down                   :boolean
#  sand_save                     :boolean
#  putts                         :integer
#  first_putt_distance           :integer
#  made_putt_distance            :integer
#  penalties                     :integer
#  stroke_and_distance_penalties :integer
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#

class PlayedHole < ActiveRecord::Base
  attr_accessible :approach, :approach_club, :approach_distance, :approach_miss_distance, :chips, :clear_approach, :club_off_tee, :fairway, :first_putt_distance, :hole_number, :made_putt_distance, :penalties, :putts, :round_id, :sand_save, :sand_shots, :stroke_and_distance_penalties, :strokes, :tee_shot_distance, :up_and_down

  belongs_to :round

  validates_presence_of :round_id, :hole_number, :strokes
end
