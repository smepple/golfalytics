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

class Hole < ActiveRecord::Base
  attr_accessible :handicap_men, :handicap_women, :length, :number, :par_men, :par_women, :tee_id

  belongs_to :tee

  validates_presence_of :tee_id, :number, :par_men
  validates_numericality_of :number, :handicap_men, :handicap_women, less_than_or_equal_to: 18
  validates_numericality_of :par_men, :par_women, less_than_or_equal_to: 6
  validates_numericality_of :length, less_than_or_equal_to: 700
end
