# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :password

  has_many :activities, dependent: :destroy

  validates_presence_of :email
  validates_uniqueness_of :email
end
